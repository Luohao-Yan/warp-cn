//! Headless ConPTY for the local agent.
//!
//! Reuses `ConptyApi` from the terminal layer but reads/writes the
//! PTY pipe via a shared `File` behind a `parking_lot::Mutex`. A
//! background thread continuously reads PTY output into a buffer;
//! the async executor drains it on demand.

#![cfg(target_os = "windows")]

use std::io::{Read, Write};
use std::os::windows::io::FromRawHandle;
use std::path::PathBuf;
use std::sync::Arc;

use parking_lot::Mutex;
use windows::core::{HSTRING, PCWSTR, PWSTR};
use windows::Win32::Foundation::{HANDLE, WAIT_OBJECT_0};
use windows::Win32::System::Console::{COORD, HPCON};
use windows::Win32::System::Threading::{
    CreateProcessW, WaitForSingleObject, CREATE_BREAKAWAY_FROM_JOB,
    CREATE_UNICODE_ENVIRONMENT, EXTENDED_STARTUPINFO_PRESENT, PROCESS_CREATION_FLAGS,
    PROCESS_INFORMATION, STARTUPINFOEXW, STARTUPINFOW,
};

use crate::terminal::local_tty::windows::conpty_api::ConptyApi;
use crate::terminal::local_tty::windows::pipes;
use crate::terminal::local_tty::windows::proc_thread_attribute_list::ProcThreadAttributeList;

/// Maximum bytes returned from a single read_output call.
const MAX_READ: usize = 100_000;

/// Error type for HeadlessPty operations.
#[derive(Debug, thiserror::Error)]
pub enum HeadlessPtyError {
    #[error("Failed to load ConPTY API: {0:#}")]
    LoadConPtyApi(#[from] crate::terminal::local_tty::windows::conpty_api::ConptyApiError),
    #[error("Failed to create async pipe: {0:#}")]
    CreatePipeFailed(#[from] pipes::CreatePipeError),
    #[error("Failed to create pseudoconsole: {0:#}")]
    CreatePseudoConsoleFailed(#[source] windows::core::Error),
    #[error("Failed to initialize thread attribute list: {0:#}")]
    InitAttrListFailed(#[source] windows::core::Error),
    #[error("Failed to set pseudoconsole attribute: {0:#}")]
    SetAttrListFailed(#[source] windows::core::Error),
    #[error("Failed to create process: {0:#}")]
    CreateProcessFailed(#[source] windows::core::Error),
    #[error("IO error: {0:#}")]
    Io(#[from] std::io::Error),
}

trait ToCoord {
    fn to_coord(&self) -> COORD;
}

impl ToCoord for (usize, usize) {
    fn to_coord(&self) -> COORD {
        COORD {
            X: self.0 as i16,
            Y: self.1 as i16,
        }
    }
}

struct Inner {
    output_buf: Vec<u8>,
    read_offset: usize,
    exited: bool,
    exit_code: Option<i32>,
}

/// A headless ConPTY that can be read/written via async-friendly methods.
pub struct HeadlessPty {
    pty_handle: HPCON,
    conpty_api: ConptyApi,
    child: PROCESS_INFORMATION,
    pipe: Arc<Mutex<std::fs::File>>,
    inner: Arc<Mutex<Inner>>,
}

unsafe impl Send for HeadlessPty {}
unsafe impl Sync for HeadlessPty {}

impl HeadlessPty {
    /// Spawn a command inside a ConPTY.
    ///
    /// `size` is (columns, rows). Default 80x24 works well.
    pub fn spawn(
        command: &str,
        working_dir: &PathBuf,
        size: (usize, usize),
    ) -> Result<Self, HeadlessPtyError> {
        let conpty_api = unsafe { ConptyApi::load() }?;

        let pipes::DuplexPipe { client, server } =
            pipes::create_async_anonymous_pipe()?;

        let pty_handle = unsafe { conpty_api.create(size.to_coord(), client, 0) }
            .map_err(HeadlessPtyError::CreatePseudoConsoleFailed)?;

        // Build startup info for the child process.
        let mut startup_info = STARTUPINFOEXW::default();
        startup_info.StartupInfo.cb = std::mem::size_of::<STARTUPINFOEXW>() as u32;

        let mut attrs = unsafe {
            ProcThreadAttributeList::new()
                .map_err(HeadlessPtyError::InitAttrListFailed)?
        };
        attrs
            .set_pty_connection(pty_handle)
            .map_err(HeadlessPtyError::SetAttrListFailed)?;
        startup_info.lpAttributeList = attrs.as_mut_ptr();

        let shell_command = build_shell_command(command)?;
        let start_directory = if working_dir.is_dir() {
            Some(HSTRING::from(working_dir.as_os_str()))
        } else {
            None
        };

        let mut process_information = PROCESS_INFORMATION::default();
        unsafe {
            CreateProcessW(
                PCWSTR::null(),
                Some(PWSTR::from_raw(shell_command.as_ptr().cast_mut())),
                None,
                None,
                false,
                PROCESS_CREATION_FLAGS(0)
                    | EXTENDED_STARTUPINFO_PRESENT
                    | CREATE_UNICODE_ENVIRONMENT
                    | CREATE_BREAKAWAY_FROM_JOB,
                None,
                start_directory
                    .as_ref()
                    .map(|hstring| PCWSTR::from_raw(hstring.as_ptr()))
                    .unwrap_or(PCWSTR::null()),
                &startup_info.StartupInfo as *const STARTUPINFOW,
                &mut process_information,
            )
            .map_err(HeadlessPtyError::CreateProcessFailed)?;
        }

        let _ = unsafe { conpty_api.release(pty_handle) };

        // Wrap the server pipe handle in a File behind a Mutex.
        let server_file = unsafe { std::fs::File::from_raw_handle(server.0 as *mut _) };
        let pipe = Arc::new(Mutex::new(server_file));

        let inner = Arc::new(Mutex::new(Inner {
            output_buf: Vec::new(),
            read_offset: 0,
            exited: false,
            exit_code: None,
        }));

        // Spawn a background thread that continuously reads PTY output.
        {
            let pipe = pipe.clone();
            let inner = inner.clone();
            // HANDLE wraps *mut c_void which is not Send. Extract the raw value.
            let child_handle_raw = process_information.hProcess.0 as isize;
            std::thread::spawn(move || {
                let mut buf = [0u8; 8192];
                loop {
                    let mut file = pipe.lock();
                    match file.read(&mut buf) {
                        Ok(0) => {
                            drop(file);
                            break;
                        }
                        Ok(n) => {
                            drop(file);
                            let mut s = inner.lock();
                            s.output_buf.extend_from_slice(&buf[..n]);
                        }
                        Err(ref e) if e.kind() == std::io::ErrorKind::WouldBlock => {
                            drop(file);
                            // Pipe is non-blocking (async); sleep briefly to avoid spinning.
                            std::thread::sleep(std::time::Duration::from_millis(10));
                        }
                        Err(e) => {
                            drop(file);
                            log::debug!("HeadlessPty reader error: {e}");
                            break;
                        }
                    }
                }
                // Wait for the child process to exit and record the exit status.
                let child_handle = HANDLE(child_handle_raw as *mut _);
                let _ = unsafe { WaitForSingleObject(child_handle, 10_000) };
                let mut s = inner.lock();
                s.exited = true;
            });
        }

        Ok(Self {
            pty_handle,
            conpty_api,
            child: process_information,
            pipe,
            inner,
        })
    }

    /// Resize the pseudoconsole.
    pub fn resize(&self, size: (usize, usize)) -> Result<(), HeadlessPtyError> {
        unsafe { self.conpty_api.resize(self.pty_handle, size.to_coord()) }
            .map_err(HeadlessPtyError::CreatePseudoConsoleFailed)
    }

    /// Read new output since the last read, draining from the pipe first.
    pub async fn read_output(&self) -> String {
        // Drain anything available from the pipe into the buffer.
        {
            let mut file = self.pipe.lock();
            let mut tmp = [0u8; 8192];
            loop {
                // The pipe is non-blocking (created as async), so a read
                // may return WouldBlock when no data is available yet.
                match file.read(&mut tmp) {
                    Ok(0) => break,
                    Ok(n) => {
                        let mut s = self.inner.lock();
                        s.output_buf.extend_from_slice(&tmp[..n]);
                    }
                    Err(ref e) if e.kind() == std::io::ErrorKind::WouldBlock => break,
                    Err(_) => break,
                }
            }
        }

        let mut s = self.inner.lock();
        let delta = String::from_utf8_lossy(&s.output_buf[s.read_offset..]).to_string();
        s.read_offset = s.output_buf.len();
        let mut truncated = delta;
        if truncated.len() > MAX_READ {
            truncated.truncate(MAX_READ);
            truncated.push_str("\n...[output truncated]");
        }
        truncated
    }

    /// Check if the child process has exited.
    pub async fn is_finished(&self) -> bool {
        // Double-check with WaitForSingleObject in case the thread
        // hasn't updated yet.
        let wait = unsafe { WaitForSingleObject(self.child.hProcess, 0) };
        if wait == WAIT_OBJECT_0 {
            self.inner.lock().exited = true;
        }
        self.inner.lock().exited
    }

    /// Get the exit code (if exited).
    pub async fn exit_code(&self) -> Option<i32> {
        self.inner.lock().exit_code
    }

    /// Write input to the PTY stdin.
    pub async fn write_input(&self, data: &[u8]) -> Result<(), String> {
        let mut file = self.pipe.lock();
        file.write_all(data).map_err(|e| format!("PTY write error: {e}"))
    }

    /// Close the PTY.
    pub fn close(&mut self) {
        unsafe { self.conpty_api.close(self.pty_handle) }
    }
}

impl Drop for HeadlessPty {
    fn drop(&mut self) {
        self.close();
    }
}

fn build_shell_command(command: &str) -> Result<HSTRING, HeadlessPtyError> {
    let full = format!("cmd /C {command}");
    Ok(HSTRING::from(full.as_str()))
}
