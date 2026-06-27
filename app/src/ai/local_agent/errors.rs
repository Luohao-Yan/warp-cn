//! Error types for the local agent orchestration engine.

use std::path::PathBuf;

/// Errors that can occur during local agent execution.
#[derive(Debug, thiserror::Error)]
pub enum LocalAgentError {
    /// The LLM provider returned an error or was unreachable.
    #[error("LLM provider error: {0}")]
    LlmProvider(String),

    /// The response exceeded the model's context window.
    #[error("Context window exceeded (used {used} tokens, limit {limit})")]
    ContextWindowExceeded { used: usize, limit: usize },

    /// The response exceeded the maximum allowed token output length.
    #[error("Max output token limit reached ({limit} tokens)")]
    MaxTokenLimit { limit: usize },

    /// The agent was cancelled by the user.
    #[error("Agent run cancelled")]
    Cancelled,

    /// A tool execution failed.
    #[error("Tool execution failed: {tool_name}: {message}")]
    ToolExecution { tool_name: String, message: String },

    /// Shell command execution failed.
    #[error("Shell command failed (exit code {exit_code}): {command}")]
    ShellCommand { command: String, exit_code: i32 },

    /// Shell command timed out.
    #[error("Shell command timed out after {timeout_secs}s: {command}")]
    ShellTimeout { command: String, timeout_secs: u64 },

    /// File I/O error.
    #[error("File I/O error for {path}: {source}")]
    FileIo {
        path: PathBuf,
        #[source]
        source: std::io::Error,
    },

    /// Grep/search produced an error.
    #[error("Search error: {0}")]
    Search(String),

    /// MCP tool call failed.
    #[error("MCP tool '{tool_name}' failed: {detail}")]
    McpTool {
        tool_name: String,
        detail: String,
    },

    /// MCP resource read failed.
    #[error("MCP resource read '{uri}' failed: {detail}")]
    McpResource { uri: String, detail: String },

    /// Sub-agent spawning or execution failed.
    #[error("Sub-agent error: {0}")]
    SubAgent(String),

    /// Task store persistence error.
    #[error("Task store error: {0}")]
    TaskStore(String),

    /// Serialization/deserialization error.
    #[error("Serialization error: {0}")]
    Serialization(String),

    /// Invalid configuration.
    #[error("Invalid configuration: {0}")]
    Configuration(String),

    /// A general/forwarding error.
    #[error("{0}")]
    Other(String),
}

impl LocalAgentError {
    /// Returns true if the error is potentially recoverable by retrying.
    pub fn is_retryable(&self) -> bool {
        matches!(
            self,
            LocalAgentError::LlmProvider(_)
                | LocalAgentError::McpTool { .. }
                | LocalAgentError::McpResource { .. }
        )
    }

    /// Returns true if the error was caused by user cancellation.
    pub fn is_cancellation(&self) -> bool {
        matches!(self, LocalAgentError::Cancelled)
    }

    /// Convert into a `warp_multi_agent_api::response_event::StreamFinished` reason string.
    pub fn to_stream_finished_reason(&self) -> &'static str {
        match self {
            LocalAgentError::ContextWindowExceeded { .. } => "CONTEXT_WINDOW_EXCEEDED",
            LocalAgentError::MaxTokenLimit { .. } => "MAX_TOKEN_LIMIT",
            LocalAgentError::Cancelled => "CANCELLED",
            _ => "ERROR",
        }
    }
}

/// Errors specific to the task store.
#[derive(Debug, thiserror::Error)]
pub enum TaskStoreError {
    #[error("Database connection error: {0}")]
    Connection(String),

    #[error("Migration error: {0}")]
    Migration(String),

    #[error("Serialization error: {0}")]
    Serialization(#[from] serde_json::Error),

    #[error("Diesel error: {0}")]
    Diesel(#[from] diesel::result::Error),

    #[error("Task not found: {0}")]
    NotFound(String),

    #[error("IO error: {0}")]
    Io(#[from] std::io::Error),
}

/// Errors from the context manager.
#[derive(Debug, thiserror::Error)]
pub enum ContextManagerError {
    #[error("Token counting failed: {0}")]
    TokenCount(String),

    #[error("Truncation produced empty context")]
    EmptyContext,

    #[error("Serialization error: {0}")]
    Serialization(#[from] serde_json::Error),

    #[error("Task store error: {0}")]
    TaskStore(#[from] TaskStoreError),
}

impl From<TaskStoreError> for LocalAgentError {
    fn from(e: TaskStoreError) -> Self {
        LocalAgentError::TaskStore(e.to_string())
    }
}

impl From<ContextManagerError> for LocalAgentError {
    fn from(e: ContextManagerError) -> Self {
        match e {
            ContextManagerError::EmptyContext => {
                LocalAgentError::ContextWindowExceeded { used: 0, limit: 0 }
            }
            ContextManagerError::TokenCount(msg) => {
                LocalAgentError::Other(format!("Token counting error: {msg}"))
            }
            ContextManagerError::Serialization(err) => {
                LocalAgentError::Serialization(err.to_string())
            }
            ContextManagerError::TaskStore(err) => {
                LocalAgentError::TaskStore(err.to_string())
            }
        }
    }
}
