//! Background process management for long-running shell commands.
//!
//! Tracks spawned processes, enables incremental output reads, stdin writes,
//! and control transfer to the user via the Pause mechanism.

use std::collections::HashMap;
use std::path::PathBuf;
use std::process::Stdio;
use std::sync::Arc;

use tokio::io::{AsyncReadExt, AsyncWriteExt};
use tokio::process::Command as TokioCommand;
use tokio::sync::Mutex;

/// Maximum output size for a single read (bytes).
const MAX_READ_SIZE: usize = 100_000;

// ---------------------------------------------------------------------------
// RunningCommand — shared state for a single background process
// ---------------------------------------------------------------------------

/// State for a running background command, shared between the reaper task,
/// the stdout/stderr reader tasks, and the tool executor.
struct RunningCommand {
    stdin: Option<tokio::process::ChildStdin>,
    stdout_buf: Vec<u8>,
    stderr_buf: Vec<u8>,
    stdout_read_offset: usize,
    stderr_read_offset: usize,
    exited: bool,
    exit_code: Option<i32>,
}

// ---------------------------------------------------------------------------
// BackgroundCommands — thread-safe map of running processes
// ---------------------------------------------------------------------------

/// Manages background shell commands for the local agent.
#[derive(Clone)]
pub struct BackgroundCommands {
    inner: Arc<Mutex<HashMap<String, RunningCommand>>>,
    working_dir: PathBuf,
}

impl BackgroundCommands {
    pub fn new(working_dir: PathBuf) -> Self {
        Self {
            inner: Arc::new(Mutex::new(HashMap::new())),
            working_dir,
        }
    }

    /// Start a command in the background. Returns an error string on failure.
    pub async fn start(&self, command_id: String, command: &str) -> Result<(), String> {
        let shell = if cfg!(target_os = "windows") {
            "cmd"
        } else {
            "/bin/sh"
        };
        let shell_arg = if cfg!(target_os = "windows") {
            "/C"
        } else {
            "-c"
        };

        let mut child = TokioCommand::new(shell)
            .arg(shell_arg)
            .arg(command)
            .current_dir(&self.working_dir)
            .stdin(Stdio::piped())
            .stdout(Stdio::piped())
            .stderr(Stdio::piped())
            .spawn()
            .map_err(|e| format!("Failed to spawn command: {e}"))?;

        let stdin = child.stdin.take();
        let stdout = child.stdout.take();
        let stderr = child.stderr.take();

        // Insert the entry before spawning readers/reaper so they can find it.
        {
            let mut map = self.inner.lock().await;
            map.insert(
                command_id.clone(),
                RunningCommand {
                    stdin,
                    stdout_buf: Vec::new(),
                    stderr_buf: Vec::new(),
                    stdout_read_offset: 0,
                    stderr_read_offset: 0,
                    exited: false,
                    exit_code: None,
                },
            );
        }

        // Spawn stdout reader.
        if let Some(mut stdout) = stdout {
            let inner = self.inner.clone();
            let id = command_id.clone();
            tokio::spawn(async move {
                let mut buf = [0u8; 8192];
                loop {
                    match stdout.read(&mut buf).await {
                        Ok(0) | Err(_) => break,
                        Ok(n) => {
                            let mut map = inner.lock().await;
                            if let Some(cmd) = map.get_mut(&id) {
                                cmd.stdout_buf.extend_from_slice(&buf[..n]);
                            }
                        }
                    }
                }
            });
        }

        // Spawn stderr reader.
        if let Some(mut stderr) = stderr {
            let inner = self.inner.clone();
            let id = command_id.clone();
            tokio::spawn(async move {
                let mut buf = [0u8; 8192];
                loop {
                    match stderr.read(&mut buf).await {
                        Ok(0) | Err(_) => break,
                        Ok(n) => {
                            let mut map = inner.lock().await;
                            if let Some(cmd) = map.get_mut(&id) {
                                cmd.stderr_buf.extend_from_slice(&buf[..n]);
                            }
                        }
                    }
                }
            });
        }

        // Spawn exit reaper.
        let inner = self.inner.clone();
        let id = command_id.clone();
        tokio::spawn(async move {
            let code = child.wait().await.ok().and_then(|s| s.code());
            let mut map = inner.lock().await;
            if let Some(cmd) = map.get_mut(&id) {
                cmd.exited = true;
                cmd.exit_code = code;
            }
        });

        Ok(())
    }

    /// Read new output since the last read for a given command.
    /// Returns (stdout_delta, stderr_delta). Returns empty strings if the
    /// command ID is not found.
    pub async fn read_output(&self, command_id: &str) -> (String, String) {
        let mut map = self.inner.lock().await;
        if let Some(cmd) = map.get_mut(command_id) {
            let stdout_delta = String::from_utf8_lossy(
                &cmd.stdout_buf[cmd.stdout_read_offset..],
            );
            let stderr_delta = String::from_utf8_lossy(
                &cmd.stderr_buf[cmd.stderr_read_offset..],
            );
            cmd.stdout_read_offset = cmd.stdout_buf.len();
            cmd.stderr_read_offset = cmd.stderr_buf.len();
            let mut out = stdout_delta.to_string();
            let mut err = stderr_delta.to_string();
            truncate_string(&mut out, MAX_READ_SIZE);
            truncate_string(&mut err, MAX_READ_SIZE);
            (out, err)
        } else {
            (String::new(), String::new())
        }
    }

    /// Write data to a running command's stdin.
    pub async fn write_input(&self, command_id: &str, data: &[u8]) -> Result<(), String> {
        let mut map = self.inner.lock().await;
        if let Some(cmd) = map.get_mut(command_id) {
            if let Some(ref mut stdin) = cmd.stdin {
                stdin.write_all(data).await.map_err(|e| format!("Write error: {e}"))?;
                Ok(())
            } else {
                Err("Command stdin not available".to_string())
            }
        } else {
            Err(format!("Command {command_id} not found"))
        }
    }

    /// Check if a command has finished.
    pub async fn is_finished(&self, command_id: &str) -> bool {
        let map = self.inner.lock().await;
        map.get(command_id).is_some_and(|cmd| cmd.exited)
    }

    /// Get the exit code of a finished command.
    pub async fn exit_code(&self, command_id: &str) -> Option<i32> {
        let map = self.inner.lock().await;
        map.get(command_id).and_then(|cmd| cmd.exit_code)
    }

    /// Get the full accumulated output for a command.
    pub async fn full_output(&self, command_id: &str) -> String {
        let map = self.inner.lock().await;
        if let Some(cmd) = map.get(command_id) {
            let mut out = String::from_utf8_lossy(&cmd.stdout_buf).to_string();
            let err = String::from_utf8_lossy(&cmd.stderr_buf).to_string();
            if !err.is_empty() {
                out.push_str(&err);
            }
            truncate_string(&mut out, MAX_READ_SIZE);
            out
        } else {
            String::new()
        }
    }

    /// Remove a finished command from the map.
    pub async fn remove(&self, command_id: &str) {
        let mut map = self.inner.lock().await;
        map.remove(command_id);
    }
}

/// Truncate a string to `max_len` bytes, appending an ellipsis if truncated.
fn truncate_string(s: &mut String, max_len: usize) {
    if s.len() > max_len {
        s.truncate(max_len);
        s.push_str("\n...[output truncated]");
    }
}
