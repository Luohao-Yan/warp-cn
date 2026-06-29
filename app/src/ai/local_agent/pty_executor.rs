//! Background process management for long-running shell commands.
//!
//! On Windows, uses a real ConPTY so programs see a true terminal.
//! On other platforms, falls back to piped stdio (to be upgraded later).

use std::collections::HashMap;
use std::path::PathBuf;
use std::sync::Arc;

use tokio::sync::Mutex;

/// Maximum output size for a single read (bytes).
const MAX_READ_SIZE: usize = 100_000;

// ---------------------------------------------------------------------------
// RunningCommand — shared state for a single background process
// ---------------------------------------------------------------------------

/// State for a running background command.
enum RunningCommand {
    #[cfg(target_os = "windows")]
    Pty(crate::ai::local_agent::headless_pty::HeadlessPty),

    #[cfg(not(target_os = "windows"))]
    Pipe {
        stdin: Option<tokio::process::ChildStdin>,
        stdout_buf: Vec<u8>,
        stderr_buf: Vec<u8>,
        stdout_read_offset: usize,
        stderr_read_offset: usize,
        exited: bool,
        exit_code: Option<i32>,
    },
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
        self.start_inner(command_id, command).await
    }

    /// Read new output since the last read for a given command.
    /// Returns (stdout_delta, stderr_delta). Returns empty strings if the
    /// command ID is not found.
    pub async fn read_output(&self, command_id: &str) -> (String, String) {
        let mut map = self.inner.lock().await;
        match map.get_mut(command_id) {
            #[cfg(target_os = "windows")]
            Some(RunningCommand::Pty(pty)) => {
                let output = pty.read_output().await;
                let mut s = output;
                truncate_string(&mut s, MAX_READ_SIZE);
                (s, String::new())
            }
            #[cfg(not(target_os = "windows"))]
            Some(RunningCommand::Pipe {
                stdout_buf,
                stderr_buf,
                stdout_read_offset,
                stderr_read_offset,
                ..
            }) => {
                let stdout_delta =
                    String::from_utf8_lossy(&stdout_buf[*stdout_read_offset..]).to_string();
                let stderr_delta =
                    String::from_utf8_lossy(&stderr_buf[*stderr_read_offset..]).to_string();
                *stdout_read_offset = stdout_buf.len();
                *stderr_read_offset = stderr_buf.len();
                let mut out = stdout_delta;
                let mut err = stderr_delta;
                truncate_string(&mut out, MAX_READ_SIZE);
                truncate_string(&mut err, MAX_READ_SIZE);
                (out, err)
            }
            None => (String::new(), String::new()),
        }
    }

    /// Write data to a running command's stdin.
    pub async fn write_input(&self, command_id: &str, data: &[u8]) -> Result<(), String> {
        let mut map = self.inner.lock().await;
        match map.get_mut(command_id) {
            #[cfg(target_os = "windows")]
            Some(RunningCommand::Pty(pty)) => {
                pty.write_input(data).await.map_err(|e| e)
            }
            #[cfg(not(target_os = "windows"))]
            Some(RunningCommand::Pipe { stdin, .. }) => {
                if let Some(ref mut stdin) = stdin {
                    use tokio::io::AsyncWriteExt;
                    stdin.write_all(data).await.map_err(|e| format!("Write error: {e}"))?;
                    Ok(())
                } else {
                    Err("Command stdin not available".to_string())
                }
            }
            None => Err(format!("Command {command_id} not found")),
        }
    }

    /// Check if a command has finished.
    pub async fn is_finished(&self, command_id: &str) -> bool {
        let map = self.inner.lock().await;
        match map.get(command_id) {
            #[cfg(target_os = "windows")]
            Some(RunningCommand::Pty(pty)) => pty.is_finished().await,
            #[cfg(not(target_os = "windows"))]
            Some(RunningCommand::Pipe { exited, .. }) => *exited,
            None => false,
        }
    }

    /// Get the exit code of a finished command.
    pub async fn exit_code(&self, command_id: &str) -> Option<i32> {
        let map = self.inner.lock().await;
        match map.get(command_id) {
            #[cfg(target_os = "windows")]
            Some(RunningCommand::Pty(pty)) => pty.exit_code().await,
            #[cfg(not(target_os = "windows"))]
            Some(RunningCommand::Pipe { exit_code, .. }) => *exit_code,
            None => None,
        }
    }

    /// Get the full accumulated output for a command.
    pub async fn full_output(&self, command_id: &str) -> String {
        let map = self.inner.lock().await;
        match map.get(command_id) {
            #[cfg(target_os = "windows")]
            Some(RunningCommand::Pty(pty)) => {
                // Read without advancing offset by cloning current state
                let mut s = pty.read_output().await;
                truncate_string(&mut s, MAX_READ_SIZE);
                s
            }
            #[cfg(not(target_os = "windows"))]
            Some(RunningCommand::Pipe {
                stdout_buf, stderr_buf, ..
            }) => {
                let mut out = String::from_utf8_lossy(stdout_buf).to_string();
                let err = String::from_utf8_lossy(stderr_buf).to_string();
                if !err.is_empty() {
                    out.push_str(&err);
                }
                truncate_string(&mut out, MAX_READ_SIZE);
                out
            }
            None => String::new(),
        }
    }

    /// Remove a finished command from the map.
    pub async fn remove(&self, command_id: &str) {
        let mut map = self.inner.lock().await;
        map.remove(command_id);
    }
}

// ---------------------------------------------------------------------------
// Platform-specific start implementation
// ---------------------------------------------------------------------------

#[cfg(target_os = "windows")]
impl BackgroundCommands {
    async fn start_inner(&self, command_id: String, command: &str) -> Result<(), String> {
        let pty = crate::ai::local_agent::headless_pty::HeadlessPty::spawn(
            command,
            &self.working_dir,
            (80, 24),
        )
        .map_err(|e| format!("Failed to spawn PTY: {e}"))?;

        {
            let mut map = self.inner.lock().await;
            map.insert(command_id, RunningCommand::Pty(pty));
        }

        Ok(())
    }
}

#[cfg(not(target_os = "windows"))]
impl BackgroundCommands {
    async fn start_inner(&self, command_id: String, command: &str) -> Result<(), String> {
        use std::process::Stdio;
        use tokio::io::AsyncReadExt;
        use tokio::process::Command as TokioCommand;

        let mut child = TokioCommand::new("/bin/sh")
            .arg("-c")
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

        {
            let mut map = self.inner.lock().await;
            map.insert(
                command_id.clone(),
                RunningCommand::Pipe {
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
                            if let Some(RunningCommand::Pipe { stdout_buf, .. }) =
                                map.get_mut(&id)
                            {
                                stdout_buf.extend_from_slice(&buf[..n]);
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
                            if let Some(RunningCommand::Pipe { stderr_buf, .. }) =
                                map.get_mut(&id)
                            {
                                stderr_buf.extend_from_slice(&buf[..n]);
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
            if let Some(RunningCommand::Pipe {
                exited, exit_code, ..
            }) = map.get_mut(&id)
            {
                *exited = true;
                *exit_code = code;
            }
        });

        Ok(())
    }
}

/// Truncate a string to `max_len` bytes, appending an ellipsis if truncated.
fn truncate_string(s: &mut String, max_len: usize) {
    if s.len() > max_len {
        s.truncate(max_len);
        s.push_str("\n...[output truncated]");
    }
}
