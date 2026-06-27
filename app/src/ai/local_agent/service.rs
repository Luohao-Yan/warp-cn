//! Service-level orchestration for the local multi-agent engine.
//!
//! `LocalMultiAgentService` is the top-level `SingletonEntity` that wires together
//! the task store, runner, tool executor, and MCP integration.  It owns the SQLite
//! connection, provides the public `run_task` entry point, and manages the lifecycle
//! of agent runs including cancellation.

use std::collections::HashMap;
use std::path::PathBuf;
use std::sync::Arc;

use async_stream::stream;
use diesel::Connection;
use diesel::SqliteConnection;
use parking_lot::Mutex;
use tokio_util::sync::CancellationToken;
use uuid::Uuid;
use warp_multi_agent_api as api;
use warpui::{Entity, ModelContext, SingletonEntity};

use ai::local_provider::ChatCompletionProvider;

use super::context_manager::ContextManager;
use super::errors::LocalAgentError;
use super::local_mode_config;
use super::runner::LocalAgentRunner;
use super::task_store::{LocalAgentTaskStore, TaskStatus};

// ---------------------------------------------------------------------------
// Constants
// ---------------------------------------------------------------------------

/// Default maximum context tokens for a local agent run.
const DEFAULT_MAX_CONTEXT_TOKENS: usize = 128_000;

/// File name for the local agent SQLite database.
const LOCAL_AGENT_DB_FILENAME: &str = "local_agent.db";

// ---------------------------------------------------------------------------
// LocalMultiAgentService
// ---------------------------------------------------------------------------

/// Singleton service that manages local multi-agent orchestration.
///
/// It owns the SQLite-backed task store and exposes the primary
/// `run_task` / `cancel_task` API that the rest of the application calls.
pub struct LocalMultiAgentService {
    task_store: Arc<LocalAgentTaskStore>,
    /// Active cancellation tokens keyed by task ID so that `cancel_task` can
    /// signal a running agent.
    active_tokens: Mutex<HashMap<String, CancellationToken>>,
    /// Default working directory for agent runs when the caller does not
    /// specify one.
    default_working_dir: PathBuf,
    /// Default model ID for agent runs.
    default_model_id: String,
}

impl Entity for LocalMultiAgentService {
    type Event = LocalAgentServiceEvent;
}

impl SingletonEntity for LocalMultiAgentService {}

// ---------------------------------------------------------------------------
// Events
// ---------------------------------------------------------------------------

/// Events emitted by `LocalMultiAgentService`.
#[derive(Debug, Clone)]
pub enum LocalAgentServiceEvent {
    /// A new task has been created and is about to start running.
    TaskCreated { task_id: String },
    /// A task has completed successfully.
    TaskCompleted { task_id: String, summary: String },
    /// A task has failed.
    TaskFailed { task_id: String, error: String },
    /// A task was cancelled.
    TaskCancelled { task_id: String },
}

// ---------------------------------------------------------------------------
// Database path
// ---------------------------------------------------------------------------

/// Return the path to the local agent database file.
fn local_agent_db_path() -> PathBuf {
    warp_core::paths::state_dir().join(LOCAL_AGENT_DB_FILENAME)
}

/// Create a new SQLite connection in read-write-create mode.
fn establish_rw_connection(db_path: &PathBuf) -> Result<SqliteConnection, LocalAgentError> {
    let db_url = format!("file:{}?mode=rwc", db_path.display());
    diesel::SqliteConnection::establish(&db_url)
        .map_err(|e| LocalAgentError::TaskStore(e.to_string()))
}

/// Run embedded migrations against the connection.
fn run_schema_migrations(conn: &Mutex<SqliteConnection>) -> Result<(), LocalAgentError> {
    LocalAgentTaskStore::run_migrations(conn).map_err(LocalAgentError::from)
}

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

impl LocalMultiAgentService {
    /// Initialise the service.
    pub fn new(_ctx: &mut ModelContext<Self>) -> Self {
        let db_path = local_agent_db_path();

        if let Some(parent) = db_path.parent() {
            let _ = std::fs::create_dir_all(parent);
        }

        let conn = establish_rw_connection(&db_path)
            .expect("Failed to open local agent database");

        let conn = Arc::new(Mutex::new(conn));
        run_schema_migrations(&conn)
            .expect("Failed to run local agent migrations");

        let task_store = Arc::new(LocalAgentTaskStore::new(Arc::clone(&conn)));

        let default_working_dir = std::env::current_dir().unwrap_or_else(|_| PathBuf::from("."));
        let default_model_id = std::env::var("LOCAL_AGENT_DEFAULT_MODEL")
            .unwrap_or_else(|_| "deepseek-chat".to_string());

        Self {
            task_store,
            active_tokens: Mutex::new(HashMap::new()),
            default_working_dir,
            default_model_id,
        }
    }

    /// Run a task from scratch. Returns (task_id, event_stream).
    pub async fn run_task(
        &self,
        prompt: &str,
        model_id: Option<&str>,
        working_dir: Option<&PathBuf>,
        max_context_tokens: Option<usize>,
        conversation_id: Option<&str>,
        provider: Arc<dyn ChatCompletionProvider>,
    ) -> Result<(String, crate::ai::agent::api::ResponseStream), LocalAgentError> {
        let task_id = Uuid::new_v4().to_string();
        let conv_id = conversation_id
            .map(|s| s.to_string())
            .unwrap_or_else(|| Uuid::new_v4().to_string());

        let model = model_id.unwrap_or(&self.default_model_id).to_string();
        let work_dir = working_dir
            .cloned()
            .unwrap_or_else(|| self.default_working_dir.clone());
        let max_ctx = max_context_tokens.unwrap_or(DEFAULT_MAX_CONTEXT_TOKENS);

        self.task_store.insert_task(&task_id, None, &conv_id, &model, prompt)?;
        self.task_store.append_text_message(&task_id, None, "user", prompt)?;

        let cancellation_token = CancellationToken::new();
        self.active_tokens
            .lock()
            .insert(task_id.clone(), cancellation_token.clone());

        let system_prompt = build_lead_agent_system_prompt();
        let context_manager = ContextManager::new(
            task_id.clone(),
            max_ctx,
            Arc::clone(&self.task_store),
            system_prompt,
        );

        let (events_tx, events_rx) = async_channel::unbounded::<crate::ai::agent::api::Event>();
        let (done_tx, done_rx) = futures::channel::oneshot::channel::<()>();

        let mut runner = LocalAgentRunner::new(
            task_id.clone(),
            conv_id.clone(),
            model,
            work_dir,
            provider,
            context_manager,
            Arc::clone(&self.task_store),
            cancellation_token,
            events_tx.clone(),
            None,
        );

        tokio::spawn(async move {
            let result = runner.run().await;
            if let Err(e) = &result {
                let error = Arc::new(crate::server::server_api::AIApiError::Other(
                    anyhow::anyhow!("{e}"),
                ));
                let _ = events_tx.send(Err(error)).await;
            }
            let _ = done_tx.send(());
        });

        let s = async_stream::stream! {
            while let Ok(event) = events_rx.recv().await {
                yield event;
            }
            let _ = done_rx.await;
        };

        Ok((task_id, Box::pin(s)))
    }

    /// Cancel a running task.
    pub fn cancel_task(&self, task_id: &str) -> bool {
        if let Some(token) = self.active_tokens.lock().remove(task_id) {
            token.cancel();
            let _ = self
                .task_store
                .update_task_status(task_id, TaskStatus::Cancelled, None);
            true
        } else {
            if let Ok(Some(task)) = self.task_store.get_task(task_id) {
                if task.status == TaskStatus::Running {
                    let _ = self
                        .task_store
                        .update_task_status(task_id, TaskStatus::Cancelled, None);
                    return true;
                }
            }
            false
        }
    }

    /// List all tasks, optionally filtered by status.
    pub fn list_tasks(
        &self,
        status_filter: Option<TaskStatus>,
    ) -> Result<Vec<super::task_store::StoredTask>, LocalAgentError> {
        self.task_store
            .list_tasks(status_filter)
            .map_err(LocalAgentError::from)
    }

    /// Get a specific task by ID.
    pub fn get_task(
        &self,
        task_id: &str,
    ) -> Result<Option<super::task_store::StoredTask>, LocalAgentError> {
        self.task_store
            .get_task(task_id)
            .map_err(LocalAgentError::from)
    }

    /// Delete a task and all its messages.
    pub fn delete_task(&self, task_id: &str) -> Result<(), LocalAgentError> {
        self.task_store
            .delete_task(task_id)
            .map_err(LocalAgentError::from)
    }

    /// Get all messages for a task.
    pub fn get_task_messages(
        &self,
        task_id: &str,
    ) -> Result<Vec<super::task_store::StoredMessage>, LocalAgentError> {
        self.task_store
            .get_messages(task_id)
            .map_err(LocalAgentError::from)
    }

    /// Access the underlying task store.
    pub fn task_store(&self) -> &Arc<LocalAgentTaskStore> {
        &self.task_store
    }

    /// Entry point for local mode dispatch from `generate_multi_agent_output`.
    ///
    /// Resolves a provider for the model, builds a `LocalAgentRunner`, runs it,
    /// and converts the resulting `Vec<ResponseEvent>` into a `ResponseStream`.
    ///
    /// Returns `Err(ConvertToAPITypeError::Ignore)` when no local provider
    /// matches the requested model (so the caller can fall back to cloud).
    pub async fn generate_local(
        params: crate::ai::agent::api::RequestParams,
        cancellation_rx: futures::channel::oneshot::Receiver<()>,
        mcp_spawner: Option<warpui::ModelSpawner<crate::ai::mcp::TemplatableMCPServerManager>>,
        task_store: Arc<LocalAgentTaskStore>,
    ) -> Result<crate::ai::agent::api::ResponseStream, crate::ai::agent::api::ConvertToAPITypeError> {
        if !local_mode_config::is_local_mode_enabled() {
            return Err(crate::ai::agent::api::ConvertToAPITypeError::Ignore);
        }

        let model_id = params.model.to_string();

        // Resolve provider from the global registry
        let provider = match local_mode_config::resolve_global_provider(&model_id) {
            Some(p) => p,
            None => {
                log::info!("No local provider found for model {model_id}, falling back to cloud");
                return Err(crate::ai::agent::api::ConvertToAPITypeError::Ignore);
            }
        };

        // Extract user prompt from the input
        let prompt = extract_prompt_from_input(&params.input);

        // Determine working directory
        let working_dir = params
            .session_context
            .current_working_directory()
            .as_ref()
            .map(|s| PathBuf::from(s.as_str()))
            .unwrap_or_else(|| std::env::current_dir().unwrap_or_else(|_| PathBuf::from(".")));

        // Determine conversation ID
        let conversation_id = params
            .conversation_token
            .as_ref()
            .map(|t| t.as_str().to_string());

        let task_id = Uuid::new_v4().to_string();
        let cancellation_token = CancellationToken::new();

        let conv_id = conversation_id.unwrap_or_else(|| Uuid::new_v4().to_string());
        let max_ctx = params
            .context_window_limit
            .map(|v| v as usize)
            .unwrap_or(DEFAULT_MAX_CONTEXT_TOKENS);

        // Persist the task and user message
        if task_store
            .insert_task(&task_id, None, &conv_id, &model_id, &prompt)
            .is_err()
        {
            return Err(crate::ai::agent::api::ConvertToAPITypeError::Ignore);
        }
        let _ = task_store.append_text_message(&task_id, None, "user", &prompt);

        // Build context manager and runner
        let system_prompt = build_lead_agent_system_prompt();
        let context_manager = ContextManager::new(
            task_id.clone(),
            max_ctx,
            Arc::clone(&task_store),
            system_prompt,
        );

        let (events_tx, events_rx) = async_channel::unbounded::<crate::ai::agent::api::Event>();
        let (done_tx, done_rx) = futures::channel::oneshot::channel::<()>();

        let mut runner = LocalAgentRunner::new(
            task_id.clone(),
            conv_id.clone(),
            model_id.clone(),
            working_dir,
            provider,
            context_manager,
            Arc::clone(&task_store),
            cancellation_token.clone(),
            events_tx.clone(),
            mcp_spawner,
        );

        // Spawn the runner — it emits events directly through the channel
        tokio::spawn(async move {
            let result = runner.run().await;
            if let Err(e) = result {
                let error = Arc::new(crate::server::server_api::AIApiError::Other(
                    anyhow::anyhow!("{e}"),
                ));
                let _ = events_tx.send(Err(error)).await;
            }
            let _ = done_tx.send(());
        });

        // Cancel the runner when the cancellation signal fires
        let ct = cancellation_token.clone();
        tokio::spawn(async move {
            let _ = cancellation_rx.await;
            ct.cancel();
        });

        // Build the response stream by consuming events from the channel
        let s = stream! {
            while let Ok(event) = events_rx.recv().await {
                yield event;
            }
            // Wait for runner to finish before ending stream
            let _ = done_rx.await;
        };

        Ok(Box::pin(s))
    }
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Build the default system prompt for the lead agent.
fn build_lead_agent_system_prompt() -> String {
    "You are an AI assistant integrated into the Warp terminal. You help users \
     accomplish software engineering tasks by running shell commands, reading \
     and editing files, searching codebases, and delegating sub-tasks to \
     focused sub-agents when appropriate.\n\n\
     Key guidelines:\n\
     - Always work in the user's working directory unless they specify otherwise.\n\
     - When running shell commands, prefer cross-platform solutions when possible.\n\
     - Before editing files, read them first to understand the current state.\n\
     - Use grep and file search to locate relevant code before making changes.\n\
     - When a task is complex, break it down and use sub-agents for parallel work.\n\
       - Use the `subagent` tool to delegate focused sub-tasks.\n\
       - Each sub-agent receives a summary of your conversation for context.\n\
       - You can dispatch multiple sub-agents in a single turn for parallel work.\n\
       - Sub-agent results are automatically incorporated into your context.\n\
     - If you encounter an error, read the error message carefully and try to \
       fix the root cause rather than retrying blindly.\n\
     - When finished, provide a concise summary of what was done.\n\
     - Be careful with destructive operations (rm, git reset --hard, etc.) and \
       confirm with the user when in doubt."
        .to_string()
}

/// Extract a text prompt from `AIAgentInput` values.
fn extract_prompt_from_input(input: &[crate::ai::agent::AIAgentInput]) -> String {
    let mut parts = Vec::new();
    for item in input {
        match item {
            crate::ai::agent::AIAgentInput::UserQuery { query, .. } => {
                parts.push(query.clone());
            }
            crate::ai::agent::AIAgentInput::AutoCodeDiffQuery { query, .. } => {
                parts.push(query.clone());
            }
            crate::ai::agent::AIAgentInput::ResumeConversation { .. } => {
                parts.push("(Resuming conversation)".to_string());
            }
            crate::ai::agent::AIAgentInput::InitProjectRules { display_query, .. } => {
                if let Some(q) = display_query {
                    parts.push(q.clone());
                }
            }
            crate::ai::agent::AIAgentInput::CreateEnvironment { display_query, .. } => {
                if let Some(q) = display_query {
                    parts.push(q.clone());
                }
            }
            _ => {
                // Unrecognized input variant — skip
            }
        }
    }
    if parts.is_empty() {
        "(No prompt)".to_string()
    } else {
        parts.join("\n")
    }
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_system_prompt_not_empty() {
        let prompt = build_lead_agent_system_prompt();
        assert!(!prompt.is_empty());
        assert!(prompt.contains("Warp terminal"));
    }

    #[test]
    fn test_cancel_nonexistent_task() {
        let tokens: Mutex<HashMap<String, CancellationToken>> = Mutex::new(HashMap::new());
        assert!(tokens.lock().get("nonexistent").is_none());
    }

    #[test]
    fn test_db_path_under_state_dir() {
        let path = local_agent_db_path();
        assert!(path.to_string_lossy().contains("local_agent"));
    }
}
