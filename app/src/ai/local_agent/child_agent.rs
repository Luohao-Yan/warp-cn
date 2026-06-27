//! Sub-agent spawning for the local agent orchestration engine.
//!
//! When the lead agent emits a `Subagent` tool call, the `ChildAgentSpawner`
//! creates a new runner instance with its own task, context window, and
//! cancellation scope.  Results are collected back into the parent
//! conversation as a `SubagentResult` message.

use std::path::PathBuf;
use std::sync::Arc;

use ai::local_provider::ChatCompletionProvider;
use tokio_util::sync::CancellationToken;
use uuid::Uuid;
use warp_multi_agent_api as api;

use super::errors::LocalAgentError;
use super::task_store::{LocalAgentTaskStore, TaskStatus};

/// Configuration for a child agent run.
#[derive(Debug, Clone)]
pub struct ChildAgentConfig {
    /// The prompt/task description for the sub-agent.
    pub prompt: String,
    /// The model ID to use (inherits parent if empty).
    pub model_id: String,
    /// Working directory for the child agent.
    pub working_dir: PathBuf,
    /// Maximum context window for the child agent.
    pub max_context_tokens: usize,
    /// Parent task ID for hierarchy tracking.
    pub parent_task_id: String,
    /// Conversation ID the child belongs to.
    pub conversation_id: String,
    /// Pre-generated task ID for this child. Used to backfill the Subagent proto.
    pub child_task_id: String,
}

/// Spawns and manages child agent runs.
///
/// Each invocation of `spawn` creates a fresh task in the store, a dedicated
/// cancellation token (child of the parent's token), and kicks off the
/// orchestration loop.  The caller can `.await` the returned handle to get the
/// final result string.
pub struct ChildAgentSpawner {
    task_store: Arc<LocalAgentTaskStore>,
    provider: Arc<dyn ChatCompletionProvider>,
    parent_cancellation_token: CancellationToken,
}

impl ChildAgentSpawner {
    /// Create a new spawner backed by the given task store and provider.
    pub fn new(
        task_store: Arc<LocalAgentTaskStore>,
        provider: Arc<dyn ChatCompletionProvider>,
        parent_cancellation_token: CancellationToken,
    ) -> Self {
        Self {
            task_store,
            provider,
            parent_cancellation_token,
        }
    }

    /// Spawn a child agent with the given configuration.
    pub fn spawn(
        &self,
        config: &ChildAgentConfig,
    ) -> Result<(String, tokio::task::JoinHandle<Result<String, LocalAgentError>>), LocalAgentError>
    {
        let child_task_id = if config.child_task_id.is_empty() {
            Uuid::new_v4().to_string()
        } else {
            config.child_task_id.clone()
        };
        let child_cancellation = self.parent_cancellation_token.child_token();

        self.task_store.insert_task(
            &child_task_id,
            Some(&config.parent_task_id),
            &config.conversation_id,
            &config.model_id,
            &config.prompt,
        )?;

        self.task_store.append_text_message(
            &child_task_id,
            None,
            "user",
            &config.prompt,
        )?;

        self.task_store.update_task_status(&child_task_id, TaskStatus::Running, None)?;

        let store = Arc::clone(&self.task_store);
        let provider = Arc::clone(&self.provider);
        let working_dir = config.working_dir.clone();
        let model_id = config.model_id.clone();
        let conversation_id = config.conversation_id.clone();
        let max_context_tokens = config.max_context_tokens;
        let child_task_id_clone = child_task_id.clone();

        let store_for_update = Arc::clone(&store);

        let handle = tokio::spawn(async move {
            let result = run_child_agent(
                store,
                &child_task_id_clone,
                &conversation_id,
                &model_id,
                &working_dir,
                max_context_tokens,
                provider,
                child_cancellation,
            )
            .await;

            match &result {
                Ok(output) => {
                    let _ = store_for_update.update_task_status(&child_task_id_clone, TaskStatus::Completed, None);
                    let _ = store_for_update.update_task_summary(&child_task_id_clone, &summarize_output(output));
                }
                Err(e) => {
                    let msg = e.to_string();
                    let _ = store_for_update.update_task_status(&child_task_id_clone, TaskStatus::Failed, Some(&msg));
                }
            }

            result
        });

        Ok((child_task_id, handle))
    }

    /// Cancel a specific child agent by task ID.
    pub fn cancel_child(&self, child_task_id: &str) -> Result<(), LocalAgentError> {
        self.task_store.update_task_status(child_task_id, TaskStatus::Cancelled, None)?;
        Ok(())
    }

    /// Access the underlying task store (for context sharing).
    pub fn task_store(&self) -> &Arc<LocalAgentTaskStore> {
        &self.task_store
    }
}

/// Run a child agent to completion.
async fn run_child_agent(
    store: Arc<LocalAgentTaskStore>,
    task_id: &str,
    conversation_id: &str,
    model_id: &str,
    working_dir: &PathBuf,
    max_context_tokens: usize,
    provider: Arc<dyn ChatCompletionProvider>,
    cancellation_token: CancellationToken,
) -> Result<String, LocalAgentError> {
    use super::context_manager::ContextManager;
    use super::runner::LocalAgentRunner;

    let system_prompt = build_child_system_prompt();
    let context_manager = ContextManager::new(
        task_id.to_string(),
        max_context_tokens,
        Arc::clone(&store),
        system_prompt,
    );

    let (events_tx, events_rx) = async_channel::unbounded::<crate::ai::agent::api::Event>();
    let events_tx_for_error = events_tx.clone();

    let mut runner = LocalAgentRunner::new(
        task_id.to_string(),
        conversation_id.to_string(),
        model_id.to_string(),
        working_dir.clone(),
        provider,
        context_manager,
        store,
        cancellation_token,
        events_tx,
        None,
    );

    // Spawn runner in a task; collect AgentOutput from the channel
    let (done_tx, done_rx) = futures::channel::oneshot::channel::<()>();
    tokio::spawn(async move {
        if let Err(e) = runner.run().await {
            let error = Arc::new(crate::server::server_api::AIApiError::Other(
                anyhow::anyhow!("{e}"),
            ));
            let _ = events_tx_for_error.send(Err(error)).await;
        }
        let _ = done_tx.send(());
    });

    let mut final_output = String::new();
    while let Ok(event) = events_rx.recv().await {
        if let Ok(response_event) = event {
            if let Some(api::response_event::Type::ClientActions(ca)) = &response_event.r#type {
                for action in &ca.actions {
                    if let Some(api::client_action::Action::AddMessagesToTask(add)) = &action.action {
                        for msg in &add.messages {
                            if let Some(api::message::Message::AgentOutput(ao)) = &msg.message {
                                final_output = ao.text.clone();
                            }
                        }
                    }
                }
            }
        }
    }
    let _ = done_rx.await;

    if final_output.is_empty() {
        final_output = "(Child agent completed with no text output.)".to_string();
    }

    Ok(final_output)
}

/// Build a system prompt for child agents that accounts for shared context.
fn build_child_system_prompt() -> String {
    "You are a focused sub-agent working on a specific task delegated by a \
     lead agent. Your prompt may include a summary of the parent agent's \
     conversation for context — use it to understand the broader goal but \
     focus exclusively on completing YOUR assigned task.\n\n\
     Guidelines:\n\
     - Complete the task efficiently and return concise text output.\n\
     - If you need context beyond what was provided, use available tools \
       (grep, read_files, etc.) to gather information.\n\
     - If you encounter blockers, describe them clearly so the lead agent \
       can take corrective action.\n\
     - Do not repeat work that the parent agent has already done as \
       described in the context summary.\n\
     - Your working directory is the same as the parent agent's."
        .to_string()
}

/// Create a short summary from a potentially long output string.
fn summarize_output(output: &str) -> String {
    let limit = 200;
    if output.len() <= limit {
        output.to_string()
    } else {
        let truncated: String = output.chars().take(limit).collect();
        format!("{truncated}...")
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_summarize_output_short() {
        let s = "Hello world";
        assert_eq!(summarize_output(s), s);
    }

    #[test]
    fn test_summarize_output_long() {
        let s: String = "x".repeat(300);
        let result = summarize_output(&s);
        assert!(result.len() <= 204);
        assert!(result.ends_with("..."));
    }

    #[test]
    fn test_child_system_prompt_not_empty() {
        let prompt = build_child_system_prompt();
        assert!(!prompt.is_empty());
    }
}
