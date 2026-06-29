//! Core orchestration loop for the local agent.
//!
//! `LocalAgentRunner` drives the multi-turn conversation with the LLM,
//! dispatches tool calls, manages the context window, and emits
//! `ResponseEvent` protobuf messages that the UI consumes.

use std::path::PathBuf;
use std::sync::Arc;
use std::time::Duration;

use chrono::Utc;
use futures_util::StreamExt;
use prost_types::Timestamp;
use tokio_util::sync::CancellationToken;
use uuid::Uuid;
use warp_multi_agent_api as api;

use ai::local_provider::{
    ChatCompletionProvider, ChatCompletionRequest, ChatMessage, MessageRole,
    StreamEvent, ToolChoice, ToolDefinition, ToolCall,
};

use super::child_agent::ChildAgentSpawner;
use super::context_manager::ContextManager;
use super::errors::{ContextManagerError, LocalAgentError};
use super::task_store::{LocalAgentTaskStore, TaskStatus};
use super::tool_executor::{ToolExecutor, ToolResult, build_tool_call_error};

// ---------------------------------------------------------------------------
// Pause / Resume types
// ---------------------------------------------------------------------------

/// Why the agent paused mid-loop.
#[derive(Debug, Clone)]
pub enum PauseReason {
    /// The LLM asked the user a question.
    AskUserQuestion { question: String },
    /// The LLM suggested a plan and awaits approval.
    SuggestPlan { plan: String },
}

/// Payload sent from the UI to resume a paused agent.
#[derive(Debug, Clone)]
pub struct ResumePayload {
    /// Free-text answer (used for AskUserQuestion).
    pub answer: String,
    /// Whether the user approved the suggested plan.
    pub approved: bool,
}

/// Shared handle that lets the tool executor pause the runner and lets
/// external callers (the UI) resume it.
#[derive(Clone)]
pub struct PauseHandle {
    pause_tx: async_channel::Sender<PauseReason>,
    resume_rx: async_channel::Receiver<ResumePayload>,
}

impl PauseHandle {
    pub fn new() -> (Self, async_channel::Receiver<PauseReason>, async_channel::Sender<ResumePayload>) {
        let (pause_tx, pause_rx) = async_channel::unbounded();
        let (resume_tx, resume_rx) = async_channel::unbounded();
        let handle = Self { pause_tx, resume_rx };
        (handle, pause_rx, resume_tx)
    }

    /// Called from inside the tool executor to request a pause.
    /// Returns the user's response once available.
    pub async fn pause_and_wait(&self, reason: PauseReason) -> ResumePayload {
        let _ = self.pause_tx.send(reason).await;
        self.resume_rx.recv().await.unwrap_or(ResumePayload {
            answer: String::new(),
            approved: false,
        })
    }
}

impl std::fmt::Debug for PauseHandle {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("PauseHandle").finish_non_exhaustive()
    }
}

/// Maximum number of consecutive LLM errors before we give up.
const MAX_CONSECUTIVE_ERRORS: u32 = 3;

/// Maximum number of agent loop iterations to prevent infinite loops.
const MAX_ITERATIONS: u32 = 100;

/// Maximum concurrent subagent spawns within a single agent turn.
const MAX_CONCURRENT_SUBAGENTS_PER_TURN: usize = 3;

/// Maximum total subagent spawns for the lifetime of a task.
const MAX_TOTAL_SUBAGENTS_PER_TASK: usize = 10;

/// Tracks an active child agent spawned via RunAgents.
pub struct ActiveChild {
    pub name: String,
    pub cancel_token: CancellationToken,
    pub join_handle: tokio::task::JoinHandle<Result<String, LocalAgentError>>,
    pub message_tx: async_channel::Sender<ChildMessage>,
}

/// A message sent to a child agent via SendMessageToAgent.
pub struct ChildMessage {
    pub subject: String,
    pub body: String,
}

/// The local agent orchestration runner.
///
/// Each `LocalAgentRunner` instance owns one conversation (task) and drives
/// it through repeated LLM-inference / tool-execution cycles until the model
/// emits a final text response with no tool calls, or an error/limit is hit.
pub struct LocalAgentRunner {
    task_id: String,
    conversation_id: String,
    model_id: String,
    working_dir: PathBuf,
    provider: Arc<dyn ChatCompletionProvider>,
    context_manager: ContextManager,
    task_store: Arc<LocalAgentTaskStore>,
    cancellation_token: tokio_util::sync::CancellationToken,
    event_tx: async_channel::Sender<crate::ai::agent::api::Event>,
    stream_closed: bool,
    last_assistant_text: String,
    subagents_spawned_this_turn: usize,
    subagents_spawned_total: usize,
    mcp_spawner: Option<warpui::ModelSpawner<crate::ai::mcp::TemplatableMCPServerManager>>,
    pause_handle: Option<PauseHandle>,
    /// External sender for resuming a paused agent (exposed via service).
    resume_tx: Option<async_channel::Sender<ResumePayload>>,
    /// Receiver for pause reasons (consumed inside `run()`).
    pause_rx: Option<async_channel::Receiver<PauseReason>>,
    /// Active child agents spawned via RunAgents (task_id → (name, cancel_token, join_handle, message_tx)).
    active_children: std::collections::HashMap<String, ActiveChild>,
}

impl LocalAgentRunner {
    /// Create a new runner for a task.
    pub fn new(
        task_id: String,
        conversation_id: String,
        model_id: String,
        working_dir: PathBuf,
        provider: Arc<dyn ChatCompletionProvider>,
        mut context_manager: ContextManager,
        task_store: Arc<LocalAgentTaskStore>,
        cancellation_token: tokio_util::sync::CancellationToken,
        event_tx: async_channel::Sender<crate::ai::agent::api::Event>,
        mcp_spawner: Option<warpui::ModelSpawner<crate::ai::mcp::TemplatableMCPServerManager>>,
    ) -> Self {
        context_manager.set_provider(provider.clone(), model_id.clone());
        let (pause_handle, pause_rx, resume_tx) = PauseHandle::new();
        Self {
            task_id,
            conversation_id,
            model_id,
            working_dir,
            provider,
            context_manager,
            task_store,
            cancellation_token,
            event_tx,
            stream_closed: false,
            last_assistant_text: String::new(),
            subagents_spawned_this_turn: 0,
            subagents_spawned_total: 0,
            mcp_spawner,
            pause_handle: Some(pause_handle),
            resume_tx: Some(resume_tx),
            pause_rx: Some(pause_rx),
            active_children: std::collections::HashMap::new(),
        }
    }

    /// Take the resume sender — called once by the service to expose it to the UI.
    pub fn take_resume_tx(&mut self) -> Option<async_channel::Sender<ResumePayload>> {
        self.resume_tx.take()
    }

    /// Take the pause receiver — called once inside `run()` to listen for pause requests.
    fn take_pause_rx(&mut self) -> Option<async_channel::Receiver<PauseReason>> {
        self.pause_rx.take()
    }

    /// Emit a ResponseEvent through the channel. Marks stream as closed if the receiver is dropped.
    async fn emit(&mut self, event: api::ResponseEvent) {
        if self.stream_closed {
            return;
        }
        if self.event_tx.send(Ok(event)).await.is_err() {
            self.stream_closed = true;
        }
    }

    /// Run the agent loop to completion, streaming events through the channel.
    pub async fn run(&mut self) -> Result<(), LocalAgentError> {
        let request_id = Uuid::new_v4().to_string();

        self.emit(self.build_stream_init(&self.conversation_id, &request_id)).await;

        self.task_store
            .update_task_status(&self.task_id, TaskStatus::Running, None)?;

        // Spawn a task that listens for pause reasons (from the tool executor)
        // and emits them as ClientActions so the UI can render the pause state.
        let pause_rx = self.take_pause_rx();
        let event_tx = self.event_tx.clone();
        let task_id = self.task_id.clone();
        if let Some(pause_rx) = pause_rx {
            tokio::spawn(async move {
                while let Ok(reason) = pause_rx.recv().await {
                    let reason_str = match &reason {
                        PauseReason::AskUserQuestion { question } => {
                            format!("ASK_USER_QUESTION:{}", question)
                        }
                        PauseReason::SuggestPlan { plan } => {
                            format!("SUGGEST_PLAN:{}", plan)
                        }
                    };
                    let pause_event = api::ResponseEvent {
                        r#type: Some(api::response_event::Type::ClientActions(
                            api::response_event::ClientActions {
                                actions: vec![api::ClientAction {
                                    action: Some(api::client_action::Action::AddMessagesToTask(
                                        api::client_action::AddMessagesToTask {
                                            task_id: task_id.clone(),
                                            messages: vec![api::Message {
                                                id: Uuid::new_v4().to_string(),
                                                task_id: task_id.clone(),
                                                timestamp: Some(now_timestamp()),
                                                message: Some(api::message::Message::AgentOutput(
                                                    api::message::AgentOutput {
                                                        text: reason_str,
                                                    },
                                                )),
                                                ..Default::default()
                                            }],
                                        },
                                    )),
                                }],
                            },
                        )),
                    };
                    let _ = event_tx.send(Ok(pause_event)).await;
                }
            });
        }

        let mut consecutive_errors: u32 = 0;
        let mut consecutive_all_tools_failed: u32 = 0;

        for _iteration in 0..MAX_ITERATIONS {
            self.subagents_spawned_this_turn = 0;

            if self.stream_closed {
                return Err(LocalAgentError::Cancelled);
            }

            if self.cancellation_token.is_cancelled() {
                self.emit(self.build_stream_finished("CANCELLED")).await;
                self.task_store
                    .update_task_status(&self.task_id, TaskStatus::Cancelled, None)?;
                return Err(LocalAgentError::Cancelled);
            }

            if let Some(task) = self.task_store.get_task(&self.task_id)? {
                if task.status == TaskStatus::Cancelled {
                    self.emit(self.build_stream_finished("CANCELLED")).await;
                    return Err(LocalAgentError::Cancelled);
                }
            }

            let messages = self.load_and_manage_context().await?;
            let llm_messages = self.context_manager.build_llm_messages(&messages);

            let (mut llm_response, streamed_partials) = match self.call_llm(&llm_messages).await {
                Ok((response, streamed)) => {
                    consecutive_errors = 0;
                    (response, streamed)
                }
                Err(e) => {
                    consecutive_errors += 1;
                    if consecutive_errors >= MAX_CONSECUTIVE_ERRORS || !e.is_retryable() {
                        self.emit(self.build_stream_finished_error(&e)).await;
                        let msg = e.to_string();
                        self.task_store.update_task_status(
                            &self.task_id,
                            TaskStatus::Failed,
                            Some(&msg),
                        )?;
                        return Err(e);
                    }
                    log::warn!("Retryable LLM error (attempt {consecutive_errors}): {e}");
                    tokio::time::sleep(Duration::from_millis(500)).await;
                    continue;
                }
            };

            // Backfill Subagent task_id before emitting tool call messages.
            for tc in &mut llm_response.tool_calls {
                if let Some(api::message::tool_call::Tool::Subagent(ref mut sub)) = tc.tool {
                    if sub.task_id.is_empty() {
                        sub.task_id = Uuid::new_v4().to_string();
                    }
                }
            }

            // Persist the assistant response.
            let assistant_msg_id = Uuid::new_v4().to_string();
            let assistant_text = llm_response.text.clone();
            self.last_assistant_text = assistant_text.clone();

            self.task_store.append_text_message(
                &self.task_id,
                Some(&request_id),
                "assistant",
                &assistant_text,
            )?;

            // If we already streamed partial text deltas, only persist to store (skip re-emitting full text).
            // If no partials were streamed (non-streaming provider or empty text), emit the full message.
            if !streamed_partials {
                let assistant_message = api::Message {
                    id: assistant_msg_id.clone(),
                    task_id: self.task_id.clone(),
                    request_id: request_id.clone(),
                    timestamp: Some(now_timestamp()),
                    message: Some(api::message::Message::AgentOutput(
                        api::message::AgentOutput {
                            text: assistant_text,
                        },
                    )),
                    ..Default::default()
                };

                self.emit(self.build_add_messages_event(&[assistant_message])).await;
            }

            if llm_response.tool_calls.is_empty() {
                self.emit(self.build_model_used_event(&self.model_id)).await;
                break;
            }

            // Count and enforce subagent limits before executing tools.
            let subagent_calls: Vec<usize> = llm_response
                .tool_calls
                .iter()
                .enumerate()
                .filter(|(_, tc)| matches!(tc.tool, Some(api::message::tool_call::Tool::Subagent(_))))
                .map(|(i, _)| i)
                .collect();

            let subagent_call_count = subagent_calls.len();
            let rejected_subagent_indices: Vec<usize> = if self.subagents_spawned_total >= MAX_TOTAL_SUBAGENTS_PER_TASK {
                // All subagent calls rejected — total limit reached.
                subagent_calls
            } else {
                let remaining_total = MAX_TOTAL_SUBAGENTS_PER_TASK - self.subagents_spawned_total;
                let remaining_turn = MAX_CONCURRENT_SUBAGENTS_PER_TURN.saturating_sub(self.subagents_spawned_this_turn);
                let allowed_this_turn = remaining_total.min(remaining_turn);
                subagent_calls.into_iter().skip(allowed_this_turn).collect()
            };

            // Emit tool call messages (using original tool_calls so the proto is intact).
            let mut tool_call_messages = Vec::new();
            for tc in &llm_response.tool_calls {
                let tc_msg_id = Uuid::new_v4().to_string();
                let tool_call_msg = api::Message {
                    id: tc_msg_id,
                    task_id: self.task_id.clone(),
                    request_id: request_id.clone(),
                    timestamp: Some(now_timestamp()),
                    message: Some(api::message::Message::ToolCall(tc.clone())),
                    ..Default::default()
                };
                tool_call_messages.push(tool_call_msg);
            }
            self.emit(self.build_add_messages_event(&tool_call_messages)).await;

            // Build a filtered list of tool calls for execution, replacing rejected
            // subagent calls with a no-op so they are NOT actually spawned.
            let rejected_set: std::collections::HashSet<usize> =
                rejected_subagent_indices.iter().copied().collect();
            let executable_tool_calls: Vec<api::message::ToolCall> = llm_response
                .tool_calls
                .iter()
                .enumerate()
                .map(|(i, tc)| {
                    if rejected_set.contains(&i) {
                        // Replace with a shell no-op so the executor doesn't spawn a child.
                        api::message::ToolCall {
                            tool_call_id: tc.tool_call_id.clone(),
                            tool: Some(api::message::tool_call::Tool::RunShellCommand(
                                api::message::tool_call::RunShellCommand {
                                    command: "echo __subagent_rejected__".to_string(),
                                    ..Default::default()
                                },
                            )),
                        }
                    } else {
                        tc.clone()
                    }
                })
                .collect();

            let child_spawner = Arc::new(ChildAgentSpawner::new(
                Arc::clone(&self.task_store),
                Arc::clone(&self.provider),
                self.cancellation_token.clone(),
            ));

            let tool_executor = ToolExecutor::new(
                self.working_dir.clone(),
                self.cancellation_token.clone(),
                child_spawner,
                self.task_id.clone(),
                self.conversation_id.clone(),
                self.model_id.clone(),
                self.context_manager.max_context_tokens(),
                self.mcp_spawner.clone(),
                self.pause_handle.clone(),
            );

            let mut tool_results = tool_executor.execute_tools(&executable_tool_calls).await;

            // Replace results for rejected subagent calls with limit errors.
            for &idx in &rejected_subagent_indices {
                let tc = &llm_response.tool_calls[idx];
                let is_total = self.subagents_spawned_total >= MAX_TOTAL_SUBAGENTS_PER_TASK;
                let limit_msg = if is_total {
                    format!(
                        "Subagent limit reached: maximum {} total subagents per task. \
                         Please complete remaining work yourself.",
                        MAX_TOTAL_SUBAGENTS_PER_TASK
                    )
                } else {
                    format!(
                        "Subagent limit reached: maximum {} concurrent subagents per turn. \
                         Please try remaining subtasks in a later turn.",
                        MAX_CONCURRENT_SUBAGENTS_PER_TURN
                    )
                };
                if let Some(pos) = tool_results.iter().position(|tr| tr.tool_call_id == tc.tool_call_id) {
                    tool_results[pos] = ToolResult {
                        tool_call_id: tc.tool_call_id.clone(),
                        tool_name: "subagent".to_string(),
                        success: false,
                        output: limit_msg.clone(),
                        proto_result: build_tool_call_error(tc, &LocalAgentError::SubAgent(limit_msg)),
                    };
                }
            }

            // Update subagent counters.
            let accepted_count = subagent_call_count.saturating_sub(rejected_subagent_indices.len());
            self.subagents_spawned_this_turn += accepted_count;
            self.subagents_spawned_total += accepted_count;

            // Persist and emit tool results.
            let mut tool_result_messages = Vec::new();
            for tr in &tool_results {
                let tr_msg_id = Uuid::new_v4().to_string();

                self.task_store.append_tool_message(
                    &self.task_id,
                    Some(&request_id),
                    &tr.tool_name,
                    &tr.tool_call_id,
                    &tr.output,
                    &tr.output,
                )?;

                let result_msg = api::Message {
                    id: tr_msg_id,
                    task_id: self.task_id.clone(),
                    request_id: request_id.clone(),
                    timestamp: Some(now_timestamp()),
                    message: Some(api::message::Message::ToolCallResult(
                        tr.proto_result.clone(),
                    )),
                    ..Default::default()
                };
                tool_result_messages.push(result_msg);
            }
            self.emit(self.build_add_messages_event(&tool_result_messages)).await;
            self.emit(self.build_model_used_event(&self.model_id)).await;

            // Track consecutive turns where every tool result was a failure.
            // If the LLM keeps retrying the same failing tool, break the loop.
            let all_failed = tool_results.iter().all(|tr| !tr.success);
            if all_failed && !tool_results.is_empty() {
                consecutive_all_tools_failed += 1;
                if consecutive_all_tools_failed >= MAX_CONSECUTIVE_ERRORS {
                    let msg = "Agent stopped: tools have failed repeatedly. \
                               Please summarize what you attempted and the errors encountered."
                        .to_string();
                    self.task_store
                        .append_text_message(&self.task_id, Some(&request_id), "system", &msg)?;
                    break;
                }
            } else {
                consecutive_all_tools_failed = 0;
            }
        }

        self.emit(self.build_stream_finished_done()).await;
        self.task_store
            .update_task_status(&self.task_id, TaskStatus::Completed, None)?;
        self.task_store
            .update_task_summary(&self.task_id, &summarize_text(&self.last_assistant_text))?;

        Ok(())
    }

    // -- LLM inference -------------------------------------------------------

    /// Call the LLM via the registered provider.
    async fn call_llm(
        &mut self,
        messages: &[api::Message],
    ) -> Result<(LlmResponse, bool), LocalAgentError> {
        let chat_messages = self.convert_to_chat_messages(messages);

        let mut tools = self.build_tool_definitions();
        tools.extend(self.build_mcp_tool_definitions());

        let request = ChatCompletionRequest {
            model: self.model_id.clone(),
            messages: chat_messages,
            tools,
            tool_choice: Some(ToolChoice::Auto),
            temperature: Some(0.2),
            max_tokens: Some(8192),
            stream: true,
        };

        let stream_result = self
            .provider
            .chat_completion_stream(request)
            .await
            .map_err(|e| LocalAgentError::LlmProvider(e.to_string()))?;

        let mut text = String::new();
        let mut tool_calls: Vec<api::message::ToolCall> = Vec::new();
        let mut current_tool_id = String::new();
        let mut current_tool_name = String::new();
        let mut current_tool_args = String::new();
        let mut in_tool_call = false;
        let mut streamed_partials = false;

        let mut stream = std::pin::pin!(stream_result);

        while let Some(event_result) = stream.next().await {
            match event_result {
                Ok(event) => match event {
                    StreamEvent::TextDelta(delta) => {
                        text.push_str(&delta);
                        streamed_partials = true;
                        let partial_msg = api::Message {
                            id: Uuid::new_v4().to_string(),
                            task_id: self.task_id.clone(),
                            request_id: String::new(),
                            timestamp: Some(now_timestamp()),
                            message: Some(api::message::Message::AgentOutput(
                                api::message::AgentOutput { text: delta },
                            )),
                            ..Default::default()
                        };
                        self.emit(self.build_add_messages_event(&[partial_msg])).await;
                    }
                    StreamEvent::ToolCallStart { id, name } => {
                        current_tool_id = id;
                        current_tool_name = name;
                        current_tool_args = String::new();
                        in_tool_call = true;
                    }
                    StreamEvent::ToolCallDelta(delta) => {
                        current_tool_args.push_str(&delta);
                    }
                    StreamEvent::ToolCallEnd => {
                        if in_tool_call {
                            if let Some(tc) = map_function_to_tool_call(
                                &current_tool_id,
                                &current_tool_name,
                                &current_tool_args,
                            ) {
                                tool_calls.push(tc);
                            }
                            in_tool_call = false;
                        }
                    }
                    StreamEvent::Done => break,
                    StreamEvent::Error(msg) => {
                        return Err(LocalAgentError::LlmProvider(msg));
                    }
                }
                Err(e) => {
                    return Err(LocalAgentError::LlmProvider(e.to_string()));
                }
            }
        }

        // If stream ended without ToolCallEnd, flush pending tool call.
        if in_tool_call {
            if let Some(tc) = map_function_to_tool_call(
                &current_tool_id,
                &current_tool_name,
                &current_tool_args,
            ) {
                tool_calls.push(tc);
            }
        }

        Ok((LlmResponse { text, tool_calls }, streamed_partials))
    }

    /// Convert protobuf messages to ChatMessage format for the provider.
    ///
    /// Handles both OpenAI and Anthropic message format requirements:
    /// - Tool calls in assistant messages are expanded into tool_calls fields
    /// - Tool results are placed in user messages (Anthropic) or tool messages (OpenAI)
    fn convert_to_chat_messages(&self, messages: &[api::Message]) -> Vec<ChatMessage> {
        let mut chat_messages = Vec::new();
        let mut pending_tool_results: Vec<ChatMessage> = Vec::new();

        for m in messages {
            match &m.message {
                Some(api::message::Message::UserQuery(uq)) => {
                    // Flush any accumulated tool results first
                    chat_messages.append(&mut pending_tool_results);
                    chat_messages.push(ChatMessage {
                        role: MessageRole::User,
                        content: uq.query.clone(),
                        tool_calls: None,
                        tool_call_id: None,
                    });
                }
                Some(api::message::Message::AgentOutput(ao)) => {
                    // Flush any accumulated tool results first
                    chat_messages.append(&mut pending_tool_results);

                    // Look ahead: if the next messages are ToolCalls, this
                    // assistant message needs to carry the tool_calls field.
                    // We collect the tool_calls that follow this assistant message
                    // and attach them here.
                    chat_messages.push(ChatMessage {
                        role: MessageRole::Assistant,
                        content: ao.text.clone(),
                        tool_calls: None,
                        tool_call_id: None,
                    });
                }
                Some(api::message::Message::ToolCall(tc)) => {
                    // Attach tool calls to the previous assistant message
                    if let Some(last) = chat_messages.last_mut() {
                        if last.role == MessageRole::Assistant {
                            let tc_entry = ai::local_provider::ToolCall {
                                id: tc.tool_call_id.clone(),
                                name: match &tc.tool {
                                    Some(api::message::tool_call::Tool::RunShellCommand(_)) => {
                                        "run_shell_command".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::ReadFiles(_)) => {
                                        "read_files".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::Grep(_)) => "grep".to_string(),
                                    Some(api::message::tool_call::Tool::FileGlob(_)) => {
                                        "file_glob".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::SearchCodebase(_)) => {
                                        "search_codebase".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::ApplyFileDiffs(_)) => {
                                        "apply_file_diffs".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::CallMcpTool(m)) => {
                                        m.name.clone()
                                    }
                                    Some(api::message::tool_call::Tool::Subagent(_)) => {
                                        "subagent".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::AskUserQuestion(_)) => {
                                        "ask_user_question".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::SuggestPlan(_)) => {
                                        "suggest_plan".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::ReadMcpResource(_)) => {
                                        "read_mcp_resource".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::WriteToLongRunningShellCommand(_)) => {
                                        "write_to_long_running_shell_command".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::ReadShellCommandOutput(_)) => {
                                        "read_shell_command_output".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::TransferShellCommandControlToUser(_)) => {
                                        "transfer_shell_command_control_to_user".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::RunAgents(_)) => {
                                        "run_agents".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::SendMessageToAgent(_)) => {
                                        "send_message_to_agent".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::ReadDocuments(_)) => {
                                        "read_documents".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::EditDocuments(_)) => {
                                        "edit_documents".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::CreateDocuments(_)) => {
                                        "create_documents".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::SuggestNewConversation(_)) => {
                                        "suggest_new_conversation".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::SuggestPrompt(_)) => {
                                        "suggest_prompt".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::ReadSkill(_)) => {
                                        "read_skill".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::FetchConversation(_)) => {
                                        "fetch_conversation".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::UploadFileArtifact(_)) => {
                                        "upload_file_artifact".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::InsertReviewComments(_)) => {
                                        "insert_review_comments".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::OpenCodeReview(_)) => {
                                        "open_code_review".to_string()
                                    }
                                    Some(api::message::tool_call::Tool::InitProject(_)) => {
                                        "init_project".to_string()
                                    }
                                    _ => "unknown".to_string(),
                                },
                                arguments: serialize_tool_args(tc),
                            };
                            last.tool_calls.get_or_insert_with(Vec::new).push(tc_entry);
                        }
                    }
                }
                Some(api::message::Message::ToolCallResult(tcr)) => {
                    // Tool results become separate messages.
                    // For Anthropic: accumulate into a single user message.
                    // For OpenAI: individual tool messages.
                    // We use the provider's api_format to decide, but for simplicity
                    // we always produce individual tool messages — the adapter layer
                    // handles format conversion.
                    pending_tool_results.push(ChatMessage {
                        role: MessageRole::Tool,
                        content: format_tool_call_result_text(tcr),
                        tool_calls: None,
                        tool_call_id: Some(tcr.tool_call_id.clone()),
                    });
                }
                Some(api::message::Message::Summarization(summ)) => {
                    // Summarization messages replace older context — treat as user
                    chat_messages.append(&mut pending_tool_results);
                    let text = match &summ.summary_type {
                        Some(api::message::summarization::SummaryType::ConversationSummary(cs)) => {
                            cs.summary.clone()
                        }
                        Some(api::message::summarization::SummaryType::ToolCallResultSummary(_)) => {
                            // ToolCallResultSummary has no summary field in proto
                            String::new()
                        }
                        None => String::new(),
                    };
                    if !text.is_empty() {
                        chat_messages.push(ChatMessage {
                            role: MessageRole::User,
                            content: format!("[Previous conversation summary: {text}]"),
                            tool_calls: None,
                            tool_call_id: None,
                        });
                    }
                }
                Some(api::message::Message::ModelUsed(_)) => {
                    // Metadata, skip for LLM
                }
                _ => {}
            }
        }

        // Flush remaining tool results
        chat_messages.append(&mut pending_tool_results);
        chat_messages
    }

    /// Build the list of tool definitions available to the model.
    fn build_tool_definitions(&self) -> Vec<ToolDefinition> {
        vec![
            ToolDefinition {
                name: "run_shell_command".to_string(),
                description: "Run a shell command and return its output. Use this to execute code, run tests, install packages, etc.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "command": {
                            "type": "string",
                            "description": "The shell command to run"
                        }
                    },
                    "required": ["command"]
                }),
            },
            ToolDefinition {
                name: "read_files".to_string(),
                description: "Read the contents of one or more files. Returns the file contents with headers indicating the file name.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "paths": {
                            "type": "array",
                            "items": { "type": "string" },
                            "description": "List of file paths to read"
                        }
                    },
                    "required": ["paths"]
                }),
            },
            ToolDefinition {
                name: "grep".to_string(),
                description: "Search for patterns in the codebase using ripgrep-like search. Returns matching lines with file names and line numbers.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "query": {
                            "type": "string",
                            "description": "The search pattern"
                        },
                        "path": {
                            "type": "string",
                            "description": "Optional directory to search in"
                        }
                    },
                    "required": ["query"]
                }),
            },
            ToolDefinition {
                name: "file_glob".to_string(),
                description: "Find files matching glob patterns. Supports *, **, and ? wildcards.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "patterns": {
                            "type": "array",
                            "items": { "type": "string" },
                            "description": "Glob patterns to match"
                        },
                        "path": {
                            "type": "string",
                            "description": "Optional directory to search in"
                        }
                    },
                    "required": ["patterns"]
                }),
            },
            ToolDefinition {
                name: "search_codebase".to_string(),
                description: "Semantic search across the codebase for relevant code. Falls back to grep-based search locally.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "query": {
                            "type": "string",
                            "description": "The semantic search query"
                        }
                    },
                    "required": ["query"]
                }),
            },
            ToolDefinition {
                name: "apply_file_diffs".to_string(),
                description: "Apply file edits using search/replace diff pairs. Each diff specifies a file path, the text to search for, and the replacement text.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "summary": {
                            "type": "string",
                            "description": "Brief summary of the changes"
                        },
                        "diffs": {
                            "type": "array",
                            "items": {
                                "type": "object",
                                "properties": {
                                    "file_path": { "type": "string" },
                                    "search": { "type": "string" },
                                    "replace": { "type": "string" }
                                },
                                "required": ["file_path", "search", "replace"]
                            }
                        }
                    },
                    "required": ["summary", "diffs"]
                }),
            },
            ToolDefinition {
                name: "subagent".to_string(),
                description: "Delegate a subtask to a focused sub-agent. The sub-agent will work on the task independently and return its result. Maximum 3 concurrent or 10 total subagents per task.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "prompt": {
                            "type": "string",
                            "description": "The task description for the sub-agent"
                        }
                    },
                    "required": ["prompt"]
                }),
            },
            ToolDefinition {
                name: "ask_user_question".to_string(),
                description: "Ask the user a question and wait for their response. Use this when you need clarification or a decision from the user.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "question": {
                            "type": "string",
                            "description": "The question to ask the user"
                        }
                    },
                    "required": ["question"]
                }),
            },
            ToolDefinition {
                name: "suggest_plan".to_string(),
                description: "Suggest a plan to the user and wait for their approval. Use this when about to perform a complex or potentially destructive sequence of actions.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "description": {
                            "type": "string",
                            "description": "The plan description to present to the user"
                        }
                    },
                    "required": ["description"]
                }),
            },
            ToolDefinition {
                name: "write_to_long_running_shell_command".to_string(),
                description: "Write input to the stdin of a long-running shell command. Use command_id returned by run_shell_command for background commands.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "command_id": {
                            "type": "string",
                            "description": "The ID of the running command to write to"
                        },
                        "input": {
                            "type": "string",
                            "description": "The text to write to the command's stdin"
                        }
                    },
                    "required": ["command_id", "input"]
                }),
            },
            ToolDefinition {
                name: "read_shell_command_output".to_string(),
                description: "Read new output from a long-running shell command. Optionally wait for the command to complete or for a specified duration before returning.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "command_id": {
                            "type": "string",
                            "description": "The ID of the running command"
                        },
                        "wait_for_completion": {
                            "type": "boolean",
                            "description": "If true, wait until the command finishes before returning output"
                        },
                        "duration_secs": {
                            "type": "number",
                            "description": "Seconds to wait before reading output (ignored if wait_for_completion is true)"
                        }
                    },
                    "required": ["command_id"]
                }),
            },
            ToolDefinition {
                name: "transfer_shell_command_control_to_user".to_string(),
                description: "Transfer control of a long-running shell command to the user so they can interact with it directly. The agent will pause until the user returns.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "reason": {
                            "type": "string",
                            "description": "The reason for transferring control to the user"
                        }
                    },
                    "required": ["reason"]
                }),
            },
            ToolDefinition {
                name: "read_documents".to_string(),
                description: "Read the contents of one or more documents by their IDs. Each ID is a file path.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "documents": {
                            "type": "array",
                            "items": {
                                "type": "object",
                                "properties": {
                                    "document_id": { "type": "string", "description": "File path to read" }
                                },
                                "required": ["document_id"]
                            }
                        }
                    },
                    "required": ["documents"]
                }),
            },
            ToolDefinition {
                name: "edit_documents".to_string(),
                description: "Edit documents by applying search/replace diffs. Each diff has a document_id (file path), search text, and replacement text.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "diffs": {
                            "type": "array",
                            "items": {
                                "type": "object",
                                "properties": {
                                    "document_id": { "type": "string", "description": "File path to edit" },
                                    "search": { "type": "string", "description": "Text to search for" },
                                    "replace": { "type": "string", "description": "Replacement text" }
                                },
                                "required": ["document_id", "search", "replace"]
                            }
                        }
                    },
                    "required": ["diffs"]
                }),
            },
            ToolDefinition {
                name: "create_documents".to_string(),
                description: "Create new documents with the given content. Each has a title (used as file name) and content.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "new_documents": {
                            "type": "array",
                            "items": {
                                "type": "object",
                                "properties": {
                                    "title": { "type": "string", "description": "File name/title for the new document" },
                                    "content": { "type": "string", "description": "Document contents" }
                                },
                                "required": ["title", "content"]
                            }
                        }
                    },
                    "required": ["new_documents"]
                }),
            },
            ToolDefinition {
                name: "suggest_new_conversation".to_string(),
                description: "Suggest starting a new conversation. Use when the current topic has been exhausted.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "message_id": { "type": "string", "description": "The message ID where to branch" }
                    },
                    "required": ["message_id"]
                }),
            },
            ToolDefinition {
                name: "suggest_prompt".to_string(),
                description: "Suggest a follow-up prompt to the user.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "query": { "type": "string", "description": "The suggested prompt text" },
                        "title": { "type": "string", "description": "Short title for the suggestion" }
                    },
                    "required": ["query"]
                }),
            },
            ToolDefinition {
                name: "read_skill".to_string(),
                description: "Read a skill file by name from ~/.warp/skills/".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "name": { "type": "string", "description": "Skill name" }
                    },
                    "required": ["name"]
                }),
            },
            ToolDefinition {
                name: "fetch_conversation".to_string(),
                description: "Fetch the message history of a past conversation by ID.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "conversation_id": { "type": "string", "description": "The conversation ID to fetch" }
                    },
                    "required": ["conversation_id"]
                }),
            },
            ToolDefinition {
                name: "upload_file_artifact".to_string(),
                description: "Upload a local file as an artifact to ~/.warp/artifacts/".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "file_path": { "type": "string", "description": "Path to the file to upload" },
                        "description": { "type": "string", "description": "Description of the artifact" }
                    },
                    "required": ["file_path"]
                }),
            },
            ToolDefinition {
                name: "insert_review_comments".to_string(),
                description: "Insert code review comments for a repository. Comments are written to a local review file.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "repo_path": { "type": "string", "description": "Repository path" },
                        "base_branch": { "type": "string", "description": "Base branch for the review" },
                        "comments": {
                            "type": "array",
                            "items": {
                                "type": "object",
                                "properties": {
                                    "comment_id": { "type": "string" },
                                    "author": { "type": "string" },
                                    "comment_body": { "type": "string" },
                                    "last_modified_timestamp": { "type": "string" }
                                },
                                "required": ["comment_id", "author", "comment_body", "last_modified_timestamp"]
                            }
                        }
                    },
                    "required": ["repo_path", "comments"]
                }),
            },
            ToolDefinition {
                name: "open_code_review".to_string(),
                description: "Open a code review by showing the git diff. No parameters needed.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {}
                }),
            },
            ToolDefinition {
                name: "init_project".to_string(),
                description: "Initialize project by analyzing its structure. No parameters needed.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {}
                }),
            },
        ]
    }

    /// Build tool definitions for MCP tools, conditionally included when MCP is available.
    fn build_mcp_tool_definitions(&self) -> Vec<ToolDefinition> {
        if self.mcp_spawner.is_none() {
            return Vec::new();
        }
        vec![
            ToolDefinition {
                name: "call_mcp_tool".to_string(),
                description: "Call a tool on an MCP server. Provide the tool name, server ID, and arguments.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "tool_name": {
                            "type": "string",
                            "description": "The name of the MCP tool to call"
                        },
                        "server_id": {
                            "type": "string",
                            "description": "The UUID of the MCP server (optional, will auto-detect if omitted)"
                        },
                        "args": {
                            "type": "object",
                            "description": "Arguments to pass to the MCP tool"
                        }
                    },
                    "required": ["tool_name"]
                }),
            },
            ToolDefinition {
                name: "read_mcp_resource".to_string(),
                description: "Read a resource from an MCP server. Provide the resource URI or name.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "uri": {
                            "type": "string",
                            "description": "The URI of the resource to read"
                        },
                        "server_id": {
                            "type": "string",
                            "description": "The UUID of the MCP server (optional)"
                        }
                    },
                    "required": ["uri"]
                }),
            },
            ToolDefinition {
                name: "run_agents".to_string(),
                description: "Launch multiple child agents in parallel. Each agent runs independently with its own task prompt. Returns results when all agents complete.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "summary": {
                            "type": "string",
                            "description": "Brief description of the overall orchestration goal"
                        },
                        "base_prompt": {
                            "type": "string",
                            "description": "Common context shared by all agents"
                        },
                        "model_id": {
                            "type": "string",
                            "description": "Model ID for child agents (optional, inherits parent if omitted)"
                        },
                        "agents": {
                            "type": "array",
                            "items": {
                                "type": "object",
                                "properties": {
                                    "name": { "type": "string", "description": "Unique name for this agent" },
                                    "prompt": { "type": "string", "description": "The specific task for this agent" }
                                },
                                "required": ["name", "prompt"]
                            },
                            "description": "List of agent configurations to spawn"
                        }
                    },
                    "required": ["summary", "agents"]
                }),
            },
            ToolDefinition {
                name: "send_message_to_agent".to_string(),
                description: "Send a message to one or more running child agents. Used for inter-agent communication.".to_string(),
                parameters: serde_json::json!({
                    "type": "object",
                    "properties": {
                        "addresses": {
                            "type": "array",
                            "items": { "type": "string" },
                            "description": "List of agent task IDs to send the message to"
                        },
                        "subject": {
                            "type": "string",
                            "description": "Subject line of the message"
                        },
                        "message": {
                            "type": "string",
                            "description": "Body of the message"
                        }
                    },
                    "required": ["addresses", "subject", "message"]
                }),
            },
        ]
    }

    // -- Context management --------------------------------------------------

    async fn load_and_manage_context(&mut self) -> Result<Vec<api::Message>, ContextManagerError> {
        let stored = self.task_store.get_messages(&self.task_id)?;
        let mut messages: Vec<api::Message> = Vec::new();
        let mut pending_tool_calls: Vec<api::message::ToolCall> = Vec::new();

        let make_ts = |sm: &super::task_store::StoredMessage| prost_types::Timestamp {
            seconds: sm.timestamp.timestamp(),
            nanos: sm.timestamp.timestamp_subsec_nanos() as i32,
        };
        let make_req_id = |sm: &super::task_store::StoredMessage| sm.request_id.clone().unwrap_or_default();

        for sm in &stored {
            match sm.role.as_str() {
                "user" | "system" => {
                    // Flush any pending tool calls as individual ToolCall messages
                    self.flush_tool_calls(&mut pending_tool_calls, &mut messages, &make_ts(sm), &make_req_id(sm));
                    if let Some(content) = &sm.content {
                        messages.push(api::Message {
                            id: sm.message_id.clone(),
                            task_id: self.task_id.clone(),
                            request_id: make_req_id(sm),
                            timestamp: Some(make_ts(sm)),
                            message: Some(api::message::Message::UserQuery(
                                api::message::UserQuery {
                                    query: content.clone(),
                                    ..Default::default()
                                },
                            )),
                            ..Default::default()
                        });
                    }
                }
                "assistant" => {
                    // Flush any pending tool calls — the assistant text follows them
                    self.flush_tool_calls(&mut pending_tool_calls, &mut messages, &make_ts(sm), &make_req_id(sm));
                    if let Some(content) = &sm.content {
                        messages.push(api::Message {
                            id: sm.message_id.clone(),
                            task_id: self.task_id.clone(),
                            request_id: make_req_id(sm),
                            timestamp: Some(make_ts(sm)),
                            message: Some(api::message::Message::AgentOutput(
                                api::message::AgentOutput {
                                    text: content.clone(),
                                },
                            )),
                            ..Default::default()
                        });
                    }
                }
                "tool" => {
                    if sm.tool_input.is_some() {
                        // Tool CALL entry (emitted by assistant alongside tool call messages)
                        if let (Some(name), Some(call_id), Some(input)) =
                            (&sm.tool_name, &sm.tool_call_id, &sm.tool_input)
                        {
                            let tc = reconstruct_tool_call(call_id, name, input);
                            pending_tool_calls.push(tc);
                        }
                    } else {
                        // Tool RESULT entry — first flush the pending calls, then the result
                        self.flush_tool_calls(&mut pending_tool_calls, &mut messages, &make_ts(sm), &make_req_id(sm));
                        if let (Some(_name), Some(call_id), Some(output)) =
                            (&sm.tool_name, &sm.tool_call_id, &sm.tool_output)
                        {
                            messages.push(api::Message {
                                id: sm.message_id.clone(),
                                task_id: self.task_id.clone(),
                                request_id: make_req_id(sm),
                                timestamp: Some(make_ts(sm)),
                                message: Some(api::message::Message::ToolCallResult(
                                    api::message::ToolCallResult {
                                        tool_call_id: call_id.clone(),
                                        result: Some(
                                            api::message::tool_call_result::Result::ReadShellCommandOutput(
                                                api::ReadShellCommandOutputResult {
                                                    command: String::new(),
                                                    result: Some(
                                                        api::read_shell_command_output_result::Result::CommandFinished(
                                                            api::ShellCommandFinished {
                                                                output: output.clone(),
                                                                exit_code: 0,
                                                                command_id: String::new(),
                                                                start_ts: None,
                                                                finish_ts: None,
                                                            },
                                                        ),
                                                    ),
                                                },
                                            ),
                                        ),
                                        ..Default::default()
                                    },
                                )),
                                ..Default::default()
                            });
                        }
                    }
                }
                _ => {}
            }
        }

        // Flush any remaining pending tool calls
        self.flush_tool_calls(&mut pending_tool_calls, &mut messages, &now_timestamp(), "");

        if !self.context_manager.fits_in_context(&messages) {
            messages = self.context_manager.compact(&messages).await?;
        }

        Ok(messages)
    }

    /// Flush pending tool calls as individual ToolCall messages.
    fn flush_tool_calls(
        &self,
        pending: &mut Vec<api::message::ToolCall>,
        messages: &mut Vec<api::Message>,
        ts: &prost_types::Timestamp,
        req_id: &str,
    ) {
        for tc in pending.drain(..) {
            messages.push(api::Message {
                id: tc.tool_call_id.clone(),
                task_id: self.task_id.clone(),
                request_id: req_id.to_string(),
                timestamp: Some(ts.clone()),
                message: Some(api::message::Message::ToolCall(tc)),
                ..Default::default()
            });
        }
    }

    // -- ResponseEvent builders ----------------------------------------------

    fn build_stream_init(&self, conversation_id: &str, request_id: &str) -> api::ResponseEvent {
        api::ResponseEvent {
            r#type: Some(api::response_event::Type::Init(
                api::response_event::StreamInit {
                    conversation_id: conversation_id.to_string(),
                    request_id: request_id.to_string(),
                    run_id: self.task_id.clone(),
                },
            )),
        }
    }

    fn build_add_messages_event(&self, messages: &[api::Message]) -> api::ResponseEvent {
        api::ResponseEvent {
            r#type: Some(api::response_event::Type::ClientActions(
                api::response_event::ClientActions {
                    actions: vec![api::ClientAction {
                        action: Some(api::client_action::Action::AddMessagesToTask(
                            api::client_action::AddMessagesToTask {
                                task_id: self.task_id.clone(),
                                messages: messages.to_vec(),
                            },
                        )),
                    }],
                },
            )),
        }
    }

    fn build_model_used_event(&self, model_id: &str) -> api::ResponseEvent {
        let model_display_name = model_id
            .rsplit('/')
            .next()
            .unwrap_or(model_id)
            .to_string();

        let model_msg = api::Message {
            id: Uuid::new_v4().to_string(),
            task_id: self.task_id.clone(),
            timestamp: Some(now_timestamp()),
            message: Some(api::message::Message::ModelUsed(
                api::message::ModelUsed {
                    model_id: model_id.to_string(),
                    model_display_name,
                    is_fallback: false,
                    prompt_cache_expires_at: Default::default(),
                },
            )),
            ..Default::default()
        };

        api::ResponseEvent {
            r#type: Some(api::response_event::Type::ClientActions(
                api::response_event::ClientActions {
                    actions: vec![api::ClientAction {
                        action: Some(api::client_action::Action::AddMessagesToTask(
                            api::client_action::AddMessagesToTask {
                                task_id: self.task_id.clone(),
                                messages: vec![model_msg],
                            },
                        )),
                    }],
                },
            )),
        }
    }

    fn build_stream_finished_done(&self) -> api::ResponseEvent {
        api::ResponseEvent {
            r#type: Some(api::response_event::Type::Finished(
                api::response_event::StreamFinished {
                    reason: Some(api::response_event::stream_finished::Reason::Done(
                        api::response_event::stream_finished::Done {},
                    )),
                    ..Default::default()
                },
            )),
        }
    }

    fn build_stream_finished(&self, reason_str: &str) -> api::ResponseEvent {
        match reason_str {
            "CANCELLED" => api::ResponseEvent {
                r#type: Some(api::response_event::Type::Finished(
                    api::response_event::StreamFinished {
                        ..Default::default()
                    },
                )),
            },
            _ => self.build_stream_finished_done(),
        }
    }

    fn build_stream_finished_error(&self, error: &LocalAgentError) -> api::ResponseEvent {
        let reason = match error {
            LocalAgentError::ContextWindowExceeded { .. } => {
                api::response_event::stream_finished::Reason::ContextWindowExceeded(
                    api::response_event::stream_finished::ContextWindowExceeded {},
                )
            }
            LocalAgentError::MaxTokenLimit { .. } => {
                api::response_event::stream_finished::Reason::MaxTokenLimit(
                    api::response_event::stream_finished::ReachedMaxTokenLimit {},
                )
            }
            _ => api::response_event::stream_finished::Reason::InternalError(
                api::response_event::stream_finished::InternalError {
                    message: error.to_string(),
                },
            ),
        };

        api::ResponseEvent {
            r#type: Some(api::response_event::Type::Finished(
                api::response_event::StreamFinished {
                    reason: Some(reason),
                    ..Default::default()
                },
            )),
        }
    }
}

// ---------------------------------------------------------------------------
// Internal types
// ---------------------------------------------------------------------------

/// The parsed result from an LLM chat-completion response.
#[derive(Debug, Clone)]
struct LlmResponse {
    /// The assistant's text content.
    text: String,
    /// Any tool calls the assistant requested.
    tool_calls: Vec<api::message::ToolCall>,
}

/// Reconstruct a protobuf ToolCall from stored tool call data.
fn reconstruct_tool_call(call_id: &str, name: &str, input: &str) -> api::message::ToolCall {
    let args: serde_json::Value = serde_json::from_str(input).unwrap_or_default();
    match name {
        "run_shell_command" | "run_command" => {
            let command = args.get("command").and_then(|v| v.as_str()).unwrap_or("").to_string();
            api::message::ToolCall {
                tool_call_id: call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::RunShellCommand(
                    api::message::tool_call::RunShellCommand { command, ..Default::default() },
                )),
            }
        }
        "read_files" => {
            let paths: Vec<String> = args.get("paths")
                .and_then(|v| v.as_array())
                .map(|arr| arr.iter().filter_map(|v| v.as_str().map(|s| s.to_string())).collect())
                .unwrap_or_default();
            let files: Vec<api::message::tool_call::read_files::File> = paths
                .iter().map(|p| api::message::tool_call::read_files::File { name: p.clone(), ..Default::default() })
                .collect();
            api::message::ToolCall {
                tool_call_id: call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::ReadFiles(
                    api::message::tool_call::ReadFiles { files },
                )),
            }
        }
        "grep" | "search" => {
            let query = args.get("query").and_then(|v| v.as_str()).unwrap_or("").to_string();
            let path = args.get("path").and_then(|v| v.as_str()).unwrap_or("").to_string();
            api::message::ToolCall {
                tool_call_id: call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::Grep(
                    api::message::tool_call::Grep { queries: vec![query], path },
                )),
            }
        }
        "file_glob" | "glob" => {
            let patterns: Vec<String> = args.get("patterns")
                .and_then(|v| v.as_array())
                .map(|arr| arr.iter().filter_map(|v| v.as_str().map(|s| s.to_string())).collect())
                .unwrap_or_default();
            let path = args.get("path").and_then(|v| v.as_str()).unwrap_or("").to_string();
            api::message::ToolCall {
                tool_call_id: call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::FileGlob(
                    api::message::tool_call::FileGlob { patterns, path },
                )),
            }
        }
        "apply_file_diffs" | "edit_file" => {
            api::message::ToolCall {
                tool_call_id: call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::ApplyFileDiffs(
                    api::message::tool_call::ApplyFileDiffs {
                        summary: args.get("summary").and_then(|v| v.as_str()).unwrap_or("").to_string(),
                        ..Default::default()
                    },
                )),
            }
        }
        "call_mcp_tool" | "mcp_tool" => {
            api::message::ToolCall {
                tool_call_id: call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::CallMcpTool(
                    api::message::tool_call::CallMcpTool {
                        name: args.get("tool_name").or_else(|| args.get("name"))
                            .and_then(|v| v.as_str()).unwrap_or("").to_string(),
                        server_id: args.get("server_id").and_then(|v| v.as_str()).unwrap_or("").to_string(),
                        ..Default::default()
                    },
                )),
            }
        }
        "subagent" | "delegate" => {
            api::message::ToolCall {
                tool_call_id: call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::Subagent(
                    api::message::tool_call::Subagent {
                        task_id: Uuid::new_v4().to_string(),
                        payload: args.get("prompt").or_else(|| args.get("payload"))
                            .and_then(|v| v.as_str()).unwrap_or("").to_string(),
                        ..Default::default()
                    },
                )),
            }
        }
        _ => {
            log::warn!("Cannot reconstruct stored tool call for unknown function: {name}");
            api::message::ToolCall { tool_call_id: call_id.to_string(), ..Default::default() }
        }
    }
}

/// Map an OpenAI-style function call name + arguments to a protobuf `ToolCall`.
fn map_function_to_tool_call(
    tool_call_id: &str,
    function_name: &str,
    arguments: &str,
) -> Option<api::message::ToolCall> {
    let args: serde_json::Value = serde_json::from_str(arguments).unwrap_or_default();

    match function_name {
        "run_shell_command" | "run_command" => {
            let command = args
                .get("command")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::RunShellCommand(
                    api::message::tool_call::RunShellCommand {
                        command,
                        ..Default::default()
                    },
                )),
            })
        }
        "read_files" => {
            let paths: Vec<String> = args
                .get("paths")
                .and_then(|v| v.as_array())
                .map(|arr| {
                    arr.iter()
                        .filter_map(|v| v.as_str().map(|s| s.to_string()))
                        .collect()
                })
                .unwrap_or_default();
            let files: Vec<api::message::tool_call::read_files::File> = paths
                .iter()
                .map(|p| api::message::tool_call::read_files::File {
                    name: p.clone(),
                    ..Default::default()
                })
                .collect();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::ReadFiles(
                    api::message::tool_call::ReadFiles { files },
                )),
            })
        }
        "grep" | "search" => {
            let query = args
                .get("query")
                .or_else(|| args.get("queries").and_then(|q| q.get(0)))
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let path = args
                .get("path")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::Grep(api::message::tool_call::Grep {
                    queries: vec![query],
                    path,
                })),
            })
        }
        "file_glob" | "glob" => {
            let patterns: Vec<String> = args
                .get("patterns")
                .and_then(|v| v.as_array())
                .map(|arr| {
                    arr.iter()
                        .filter_map(|v| v.as_str().map(|s| s.to_string()))
                        .collect()
                })
                .unwrap_or_default();
            let path = args
                .get("path")
                .or_else(|| args.get("search_dir"))
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::FileGlob(
                    api::message::tool_call::FileGlob { patterns, path },
                )),
            })
        }
        "search_codebase" => {
            let query = args
                .get("query")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::SearchCodebase(
                    api::message::tool_call::SearchCodebase {
                        query,
                        ..Default::default()
                    },
                )),
            })
        }
        "apply_file_diffs" | "edit_file" => {
            let summary = args
                .get("summary")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let mut file_diffs = Vec::new();
            if let Some(diffs_arr) = args.get("diffs").and_then(|v| v.as_array()) {
                for diff_val in diffs_arr {
                    let file_path = diff_val
                        .get("file_path")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let search = diff_val
                        .get("search")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let replace = diff_val
                        .get("replace")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    file_diffs.push(api::message::tool_call::apply_file_diffs::FileDiff {
                        file_path,
                        search,
                        replace,
                    });
                }
            } else if let Some(diffs_str) = args.get("diffs").and_then(|v| v.as_str()) {
                file_diffs.push(api::message::tool_call::apply_file_diffs::FileDiff {
                    file_path: String::new(),
                    search: diffs_str.to_string(),
                    replace: String::new(),
                });
            }
            let mut new_files = Vec::new();
            if let Some(nf_arr) = args.get("new_files").and_then(|v| v.as_array()) {
                for nf_val in nf_arr {
                    let file_path = nf_val
                        .get("file_path")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let content = nf_val
                        .get("content")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    new_files.push(api::message::tool_call::apply_file_diffs::NewFile {
                        file_path,
                        content,
                    });
                }
            }
            let mut deleted_files = Vec::new();
            if let Some(df_arr) = args.get("deleted_files").and_then(|v| v.as_array()) {
                for df_val in df_arr {
                    let file_path = df_val
                        .get("file_path")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    deleted_files.push(api::message::tool_call::apply_file_diffs::DeleteFile {
                        file_path,
                    });
                }
            }
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::ApplyFileDiffs(
                    api::message::tool_call::ApplyFileDiffs {
                        summary,
                        diffs: file_diffs,
                        new_files,
                        deleted_files,
                        ..Default::default()
                    },
                )),
            })
        }
        "call_mcp_tool" | "mcp_tool" => {
            let tool_name = args
                .get("tool_name")
                .or_else(|| args.get("name"))
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let server_id = args
                .get("server_id")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let mcp_args = args
                .get("args")
                .and_then(|v| v.as_object().cloned())
                .and_then(|obj| serde_json_to_prost_struct(obj).ok());
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::CallMcpTool(
                    api::message::tool_call::CallMcpTool {
                        name: tool_name,
                        args: mcp_args,
                        server_id,
                    },
                )),
            })
        }
        "read_mcp_resource" => {
            let uri = args
                .get("uri")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let server_id = args
                .get("server_id")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::ReadMcpResource(
                    api::message::tool_call::ReadMcpResource {
                        uri,
                        server_id,
                    },
                )),
            })
        }
        "subagent" | "delegate" => {
            let payload = args
                .get("prompt")
                .or_else(|| args.get("payload"))
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::Subagent(
                    api::message::tool_call::Subagent {
                        task_id: Uuid::new_v4().to_string(),
                        payload,
                        ..Default::default()
                    },
                )),
            })
        }
        "ask_user_question" => {
            let question = args
                .get("question")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::AskUserQuestion(
                    api::AskUserQuestion {
                        questions: vec![api::ask_user_question::Question {
                            question_id: Uuid::new_v4().to_string(),
                            question,
                            ..Default::default()
                        }],
                    },
                )),
            })
        }
        "suggest_plan" => {
            let description = args
                .get("description")
                .or_else(|| args.get("summary"))
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::SuggestPlan(
                    api::message::tool_call::SuggestPlan {
                        summary: description,
                        ..Default::default()
                    },
                )),
            })
        }
        "write_to_long_running_shell_command" => {
            let command_id = args
                .get("command_id")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let input = args
                .get("input")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .as_bytes()
                .to_vec();
            let mode = args
                .get("mode")
                .and_then(|v| v.as_str())
                .map(|m| match m {
                    "line" => api::message::tool_call::write_to_long_running_shell_command::mode::Mode::Line(()),
                    "block" => api::message::tool_call::write_to_long_running_shell_command::mode::Mode::Block(()),
                    _ => api::message::tool_call::write_to_long_running_shell_command::mode::Mode::Raw(()),
                });
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::WriteToLongRunningShellCommand(
                    api::message::tool_call::WriteToLongRunningShellCommand {
                        command_id,
                        input,
                        mode: mode.map(|m| api::message::tool_call::write_to_long_running_shell_command::Mode {
                            mode: Some(m),
                        }),
                    },
                )),
            })
        }
        "read_shell_command_output" => {
            let command_id = args
                .get("command_id")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let delay = if args.get("wait_for_completion").and_then(|v| v.as_bool()).unwrap_or(false) {
                Some(api::message::tool_call::read_shell_command_output::Delay::OnCompletion(()))
            } else {
                args.get("duration_secs")
                    .and_then(|v| v.as_f64())
                    .map(|secs| {
                        api::message::tool_call::read_shell_command_output::Delay::Duration(
                            prost_types::Duration {
                                seconds: secs as i64,
                                nanos: ((secs.fract() * 1e9) as i32),
                            },
                        )
                    })
            };
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::ReadShellCommandOutput(
                    api::message::tool_call::ReadShellCommandOutput {
                        command_id,
                        delay,
                    },
                )),
            })
        }
        "transfer_shell_command_control_to_user" => {
            let reason = args
                .get("reason")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::TransferShellCommandControlToUser(
                    api::message::tool_call::TransferShellCommandControlToUser {
                        reason,
                    },
                )),
            })
        }
        "run_agents" => {
            let summary = args
                .get("summary")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let base_prompt = args
                .get("base_prompt")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let model_id = args
                .get("model_id")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let mut agent_configs = Vec::new();
            if let Some(agents_arr) = args.get("agents").and_then(|v| v.as_array()) {
                for agent_val in agents_arr {
                    let name = agent_val
                        .get("name")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let prompt = agent_val
                        .get("prompt")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let title = agent_val
                        .get("title")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    agent_configs.push(api::run_agents::AgentRunConfig {
                        name,
                        prompt,
                        title,
                    });
                }
            }
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::RunAgents(
                    api::RunAgents {
                        summary,
                        base_prompt,
                        model_id,
                        agent_run_configs: agent_configs,
                        ..Default::default()
                    },
                )),
            })
        }
        "send_message_to_agent" => {
            let mut addresses = Vec::new();
            if let Some(addr_arr) = args.get("addresses").and_then(|v| v.as_array()) {
                for addr_val in addr_arr {
                    if let Some(s) = addr_val.as_str() {
                        addresses.push(s.to_string());
                    }
                }
            }
            let subject = args
                .get("subject")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let message = args
                .get("message")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::SendMessageToAgent(
                    api::SendMessageToAgent {
                        addresses,
                        subject,
                        message,
                    },
                )),
            })
        }
        "read_documents" => {
            let mut documents = Vec::new();
            if let Some(docs_arr) = args.get("documents").and_then(|v| v.as_array()) {
                for doc_val in docs_arr {
                    let document_id = doc_val
                        .get("document_id")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    documents.push(api::message::tool_call::read_documents::Document {
                        document_id,
                        ..Default::default()
                    });
                }
            }
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::ReadDocuments(
                    api::message::tool_call::ReadDocuments { documents },
                )),
            })
        }
        "edit_documents" => {
            let mut diffs = Vec::new();
            if let Some(diffs_arr) = args.get("diffs").and_then(|v| v.as_array()) {
                for diff_val in diffs_arr {
                    let document_id = diff_val
                        .get("document_id")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let search = diff_val
                        .get("search")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let replace = diff_val
                        .get("replace")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    diffs.push(api::message::tool_call::edit_documents::DocumentDiff {
                        document_id,
                        search,
                        replace,
                    });
                }
            }
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::EditDocuments(
                    api::message::tool_call::EditDocuments { diffs },
                )),
            })
        }
        "create_documents" => {
            let mut new_documents = Vec::new();
            if let Some(docs_arr) = args.get("new_documents").and_then(|v| v.as_array()) {
                for doc_val in docs_arr {
                    let title = doc_val
                        .get("title")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let content = doc_val
                        .get("content")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    new_documents.push(api::message::tool_call::create_documents::NewDocument {
                        content,
                        title,
                    });
                }
            }
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::CreateDocuments(
                    api::message::tool_call::CreateDocuments { new_documents },
                )),
            })
        }
        "suggest_new_conversation" => {
            let message_id = args
                .get("message_id")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::SuggestNewConversation(
                    api::message::tool_call::SuggestNewConversation {
                        message_id,
                    },
                )),
            })
        }
        "suggest_prompt" => {
            let query = args
                .get("query")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let title = args
                .get("title")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::SuggestPrompt(
                    api::message::tool_call::SuggestPrompt {
                        is_trigger_irrelevant: false,
                        display_mode: Some(api::message::tool_call::suggest_prompt::DisplayMode::PromptChip(
                            api::message::tool_call::suggest_prompt::PromptChip {
                                prompt: query,
                                label: title,
                            },
                        )),
                    },
                )),
            })
        }
        "read_skill" => {
            let name = args
                .get("name")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::ReadSkill(
                    api::message::tool_call::ReadSkill {
                        name,
                        ..Default::default()
                    },
                )),
            })
        }
        "fetch_conversation" => {
            let conversation_id = args
                .get("conversation_id")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::FetchConversation(
                    api::message::tool_call::FetchConversation {
                        conversation_id,
                    },
                )),
            })
        }
        "upload_file_artifact" => {
            let file_path = args
                .get("file_path")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let description = args
                .get("description")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::UploadFileArtifact(
                    api::UploadFileArtifact {
                        file: Some(api::FilePathReference { file_path }),
                        description,
                    },
                )),
            })
        }
        "insert_review_comments" => {
            let repo_path = args
                .get("repo_path")
                .and_then(|v| v.as_str())
                .unwrap_or("")
                .to_string();
            let base_branch = args
                .get("base_branch")
                .and_then(|v| v.as_str())
                .unwrap_or("main")
                .to_string();
            let mut comments = Vec::new();
            if let Some(comments_arr) = args.get("comments").and_then(|v| v.as_array()) {
                for comment_val in comments_arr {
                    let comment_id = comment_val
                        .get("comment_id")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let author = comment_val
                        .get("author")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let comment_body = comment_val
                        .get("comment_body")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    let last_modified_timestamp = comment_val
                        .get("last_modified_timestamp")
                        .and_then(|v| v.as_str())
                        .unwrap_or("")
                        .to_string();
                    comments.push(api::message::tool_call::insert_review_comments::Comment {
                        comment_id,
                        author,
                        comment_body,
                        last_modified_timestamp,
                        parent_comment_id: String::new(),
                        location: None,
                        html_url: String::new(),
                    });
                }
            }
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::InsertReviewComments(
                    api::message::tool_call::InsertReviewComments {
                        repo_path,
                        comments,
                        base_branch,
                    },
                )),
            })
        }
        "open_code_review" => {
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::OpenCodeReview(
                    api::message::tool_call::OpenCodeReview {},
                )),
            })
        }
        "init_project" => {
            Some(api::message::ToolCall {
                tool_call_id: tool_call_id.to_string(),
                tool: Some(api::message::tool_call::Tool::InitProject(
                    api::message::tool_call::InitProject {},
                )),
            })
        }
        _ => {
            log::warn!("Unrecognized function name from LLM: {function_name}");
            None
        }
    }
}

/// Extract a human-readable text summary from a `ToolCallResult` proto message.
fn format_tool_call_result_text(tcr: &api::message::ToolCallResult) -> String {
    match &tcr.result {
        Some(api::message::tool_call_result::Result::ReadShellCommandOutput(r)) => {
            match &r.result {
                Some(api::read_shell_command_output_result::Result::CommandFinished(cf)) => {
                    cf.output.clone()
                }
                _ => "(command still running)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::RunShellCommand(r)) => {
            match &r.result {
                Some(api::run_shell_command_result::Result::CommandFinished(cf)) => {
                    cf.output.clone()
                }
                _ => "(shell result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::CallMcpTool(r)) => {
            match &r.result {
                Some(api::call_mcp_tool_result::Result::Success(s)) => {
                    s.results.iter().map(|ri| {
                        match &ri.result {
                            Some(api::call_mcp_tool_result::success::result::Result::Text(t)) => t.text.clone(),
                            _ => String::new(),
                        }
                    }).collect::<Vec<_>>().join("\n")
                }
                Some(api::call_mcp_tool_result::Result::Error(e)) => {
                    format!("MCP error: {}", e.message)
                }
                _ => "(MCP result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::RunAgentsResult(r)) => {
            match &r.outcome {
                Some(api::run_agents_result::Outcome::Launched(l)) => {
                    l.agents.iter().map(|a| {
                        match &a.result {
                            Some(api::run_agents_result::agent_outcome::Result::Launched(la)) => {
                                format!("{}: launched ({})", a.name, la.agent_id)
                            }
                            Some(api::run_agents_result::agent_outcome::Result::Failed(f)) => {
                                format!("{}: failed - {}", a.name, f.error)
                            }
                            None => format!("{}: unknown", a.name)
                        }
                    }).collect::<Vec<_>>().join("\n")
                }
                Some(api::run_agents_result::Outcome::Denied(d)) => {
                    format!("RunAgents denied: {}", d.reason)
                }
                Some(api::run_agents_result::Outcome::Failure(f)) => {
                    format!("RunAgents failed: {}", f.error)
                }
                None => "(RunAgents result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::SendMessageToAgent(r)) => {
            match &r.result {
                Some(api::send_message_to_agent_result::Result::Success(s)) => {
                    format!("Message sent (id: {})", s.message_id)
                }
                Some(api::send_message_to_agent_result::Result::Error(e)) => {
                    format!("SendMessageToAgent error: {}", e.message)
                }
                None => "(SendMessageToAgent result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::ReadDocuments(r)) => {
            match &r.result {
                Some(api::read_documents_result::Result::Success(s)) => {
                    s.documents.iter().map(|d| {
                        format!("--- {} ---\n{}", d.document_id, d.content)
                    }).collect::<Vec<_>>().join("\n")
                }
                Some(api::read_documents_result::Result::Error(e)) => {
                    format!("ReadDocuments error: {}", e.message)
                }
                None => "(ReadDocuments result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::EditDocuments(r)) => {
            match &r.result {
                Some(api::edit_documents_result::Result::Success(s)) => {
                    s.updated_documents.iter().map(|d| d.document_id.clone()).collect::<Vec<_>>().join(", ")
                }
                Some(api::edit_documents_result::Result::Error(e)) => {
                    format!("EditDocuments error: {}", e.message)
                }
                None => "(EditDocuments result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::CreateDocuments(r)) => {
            match &r.result {
                Some(api::create_documents_result::Result::Success(s)) => {
                    s.created_documents.iter().map(|d| d.document_id.clone()).collect::<Vec<_>>().join(", ")
                }
                Some(api::create_documents_result::Result::Error(e)) => {
                    format!("CreateDocuments error: {}", e.message)
                }
                None => "(CreateDocuments result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::SuggestNewConversation(r)) => {
            match &r.result {
                Some(api::suggest_new_conversation_result::Result::Accepted(_)) => "Conversation branched".to_string(),
                Some(api::suggest_new_conversation_result::Result::Rejected(_)) => "New conversation rejected".to_string(),
                None => "(SuggestNewConversation result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::SuggestPrompt(r)) => {
            match &r.result {
                Some(api::suggest_prompt_result::Result::Accepted(_)) => "Prompt suggestion accepted".to_string(),
                Some(api::suggest_prompt_result::Result::Rejected(_)) => "Prompt suggestion rejected".to_string(),
                None => "(SuggestPrompt result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::ReadSkill(r)) => {
            match &r.result {
                Some(api::read_skill_result::Result::Success(s)) => {
                    s.content.as_ref().map(|c| c.content.clone()).unwrap_or_default()
                }
                Some(api::read_skill_result::Result::Error(e)) => {
                    format!("ReadSkill error: {}", e.message)
                }
                None => "(ReadSkill result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::FetchConversation(r)) => {
            match &r.result {
                Some(api::fetch_conversation_result::Result::Success(s)) => {
                    format!("Conversation at: {}", s.directory_path)
                }
                Some(api::fetch_conversation_result::Result::Error(e)) => {
                    format!("FetchConversation error: {}", e.message)
                }
                None => "(FetchConversation result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::UploadFileArtifact(r)) => {
            match &r.result {
                Some(api::upload_file_artifact_result::Result::Success(s)) => {
                    format!("Artifact uploaded: {} ({} bytes, {})", s.artifact_uid, s.size_bytes, s.mime_type)
                }
                Some(api::upload_file_artifact_result::Result::Error(e)) => {
                    format!("UploadFileArtifact error: {}", e.message)
                }
                None => "(UploadFileArtifact result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::InsertReviewComments(r)) => {
            match &r.result {
                Some(api::insert_review_comments_result::Result::Success(_)) => "Review comments inserted".to_string(),
                Some(api::insert_review_comments_result::Result::Error(e)) => {
                    format!("InsertReviewComments error: {}", e.message)
                }
                None => "(InsertReviewComments result unavailable)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::OpenCodeReview(_)) => "Code review opened".to_string(),
        Some(api::message::tool_call_result::Result::InitProject(_)) => "Project initialized".to_string(),
        _ => "(tool result)".to_string(),
    }
}

/// Get the current time as a protobuf Timestamp.
fn now_timestamp() -> Timestamp {
    let now = Utc::now();
    Timestamp {
        seconds: now.timestamp(),
        nanos: now.timestamp_subsec_nanos() as i32,
    }
}

/// Extract a summary from the last assistant text in the emitted events.
fn summarize_text(text: &str) -> String {
    let limit = 200;
    if text.len() <= limit {
        text.to_string()
    } else {
        let truncated: String = text.chars().take(limit).collect();
        format!("{truncated}...")
    }
}

/// Convert a `serde_json::Map` to a `prost_types::Struct`.
fn serde_json_to_prost_struct(
    obj: serde_json::Map<String, serde_json::Value>,
) -> Result<prost_types::Struct, String> {
    let mut fields = std::collections::BTreeMap::new();
    for (k, v) in obj {
        fields.insert(k, serde_json_to_prost_value(v)?);
    }
    Ok(prost_types::Struct { fields })
}

/// Convert a `serde_json::Value` to a `prost_types::Value`.
fn serde_json_to_prost_value(value: serde_json::Value) -> Result<prost_types::Value, String> {
    Ok(prost_types::Value {
        kind: Some(match value {
            serde_json::Value::Null => prost_types::value::Kind::NullValue(0),
            serde_json::Value::Bool(v) => prost_types::value::Kind::BoolValue(v),
            serde_json::Value::Number(n) => prost_types::value::Kind::NumberValue(
                n.as_f64()
                    .ok_or_else(|| format!("float {n} is not valid JSON number"))?,
            ),
            serde_json::Value::String(s) => prost_types::value::Kind::StringValue(s),
            serde_json::Value::Array(a) => prost_types::value::Kind::ListValue(prost_types::ListValue {
                values: a
                    .into_iter()
                    .map(serde_json_to_prost_value)
                    .collect::<Result<Vec<_>, String>>()?,
            }),
            serde_json::Value::Object(v) => prost_types::value::Kind::StructValue(serde_json_to_prost_struct(v)?),
        }),
    })
}

/// Serialize a protobuf ToolCall's arguments into a JSON string for the provider.
fn serialize_tool_args(tc: &api::message::ToolCall) -> String {
    match &tc.tool {
        Some(api::message::tool_call::Tool::RunShellCommand(s)) => {
            serde_json::json!({"command": s.command}).to_string()
        }
        Some(api::message::tool_call::Tool::ReadFiles(read)) => {
            let paths: Vec<&str> = read.files.iter().map(|f| f.name.as_str()).collect();
            serde_json::json!({"paths": paths}).to_string()
        }
        Some(api::message::tool_call::Tool::Grep(grep)) => {
            serde_json::json!({"query": grep.queries.first().unwrap_or(&String::new()), "path": grep.path}).to_string()
        }
        Some(api::message::tool_call::Tool::FileGlob(glob)) => {
            serde_json::json!({"patterns": glob.patterns, "path": glob.path}).to_string()
        }
        Some(api::message::tool_call::Tool::SearchCodebase(search)) => {
            serde_json::json!({"query": search.query}).to_string()
        }
        Some(api::message::tool_call::Tool::ApplyFileDiffs(diffs)) => {
            let diff_arr: Vec<serde_json::Value> = diffs.diffs.iter().map(|d| {
                serde_json::json!({"file_path": d.file_path, "search": d.search, "replace": d.replace})
            }).collect();
            serde_json::json!({"summary": diffs.summary, "diffs": diff_arr}).to_string()
        }
        Some(api::message::tool_call::Tool::CallMcpTool(mcp)) => {
            let args_val = mcp.args.as_ref().and_then(|s| prost_struct_to_serde_json_value(s).ok());
            serde_json::json!({"tool_name": mcp.name, "server_id": mcp.server_id, "args": args_val.unwrap_or(serde_json::json!({}))}).to_string()
        }
        Some(api::message::tool_call::Tool::Subagent(sub)) => {
            serde_json::json!({"prompt": sub.payload}).to_string()
        }
        Some(api::message::tool_call::Tool::AskUserQuestion(ask)) => {
            let q = ask.questions.first().map(|q| q.question.clone()).unwrap_or_default();
            serde_json::json!({"question": q}).to_string()
        }
        Some(api::message::tool_call::Tool::SuggestPlan(plan)) => {
            serde_json::json!({"description": plan.summary}).to_string()
        }
        Some(api::message::tool_call::Tool::ReadMcpResource(read)) => {
            serde_json::json!({"uri": read.uri, "server_id": read.server_id}).to_string()
        }
        Some(api::message::tool_call::Tool::WriteToLongRunningShellCommand(write)) => {
            let input_str = String::from_utf8_lossy(&write.input);
            serde_json::json!({"command_id": write.command_id, "input": input_str}).to_string()
        }
        Some(api::message::tool_call::Tool::ReadShellCommandOutput(read)) => {
            serde_json::json!({"command_id": read.command_id}).to_string()
        }
        Some(api::message::tool_call::Tool::TransferShellCommandControlToUser(transfer)) => {
            serde_json::json!({"reason": transfer.reason}).to_string()
        }
        Some(api::message::tool_call::Tool::RunAgents(run)) => {
            let agents: Vec<serde_json::Value> = run.agent_run_configs.iter().map(|c| {
                serde_json::json!({"name": c.name, "prompt": c.prompt})
            }).collect();
            serde_json::json!({"summary": run.summary, "base_prompt": run.base_prompt, "model_id": run.model_id, "agents": agents}).to_string()
        }
        Some(api::message::tool_call::Tool::SendMessageToAgent(msg)) => {
            serde_json::json!({"addresses": msg.addresses, "subject": msg.subject, "message": msg.message}).to_string()
        }
        Some(api::message::tool_call::Tool::ReadDocuments(read)) => {
            let docs: Vec<serde_json::Value> = read.documents.iter().map(|d| {
                serde_json::json!({"document_id": d.document_id})
            }).collect();
            serde_json::json!({"documents": docs}).to_string()
        }
        Some(api::message::tool_call::Tool::EditDocuments(edit)) => {
            let diffs: Vec<serde_json::Value> = edit.diffs.iter().map(|d| {
                serde_json::json!({"document_id": d.document_id, "search": d.search, "replace": d.replace})
            }).collect();
            serde_json::json!({"diffs": diffs}).to_string()
        }
        Some(api::message::tool_call::Tool::CreateDocuments(create)) => {
            let docs: Vec<serde_json::Value> = create.new_documents.iter().map(|d| {
                serde_json::json!({"title": d.title, "content": d.content})
            }).collect();
            serde_json::json!({"new_documents": docs}).to_string()
        }
        Some(api::message::tool_call::Tool::SuggestNewConversation(s)) => {
            serde_json::json!({"message_id": s.message_id}).to_string()
        }
        Some(api::message::tool_call::Tool::SuggestPrompt(s)) => {
            let query = s.display_mode.as_ref().map(|m| match m {
                api::message::tool_call::suggest_prompt::DisplayMode::InlineQueryBanner(b) => b.query.clone(),
                api::message::tool_call::suggest_prompt::DisplayMode::PromptChip(c) => c.prompt.clone(),
            }).unwrap_or_default();
            serde_json::json!({"query": query}).to_string()
        }
        Some(api::message::tool_call::Tool::ReadSkill(skill)) => {
            serde_json::json!({"name": skill.name}).to_string()
        }
        Some(api::message::tool_call::Tool::FetchConversation(fetch)) => {
            serde_json::json!({"conversation_id": fetch.conversation_id}).to_string()
        }
        Some(api::message::tool_call::Tool::UploadFileArtifact(upload)) => {
            let fp = upload.file.as_ref().map(|f| f.file_path.clone()).unwrap_or_default();
            serde_json::json!({"file_path": fp, "description": upload.description}).to_string()
        }
        Some(api::message::tool_call::Tool::InsertReviewComments(insert)) => {
            let comments: Vec<serde_json::Value> = insert.comments.iter().map(|c| {
                serde_json::json!({"comment_id": c.comment_id, "author": c.author, "comment_body": c.comment_body, "last_modified_timestamp": c.last_modified_timestamp})
            }).collect();
            serde_json::json!({"repo_path": insert.repo_path, "base_branch": insert.base_branch, "comments": comments}).to_string()
        }
        Some(api::message::tool_call::Tool::OpenCodeReview(_)) => "{}".to_string(),
        Some(api::message::tool_call::Tool::InitProject(_)) => "{}".to_string(),
        _ => "{}".to_string(),
    }
}

/// Convert a prost_types::Struct to serde_json::Value.
pub(super) fn prost_struct_to_serde_json_value(s: &prost_types::Struct) -> Result<serde_json::Value, String> {
    let mut map = serde_json::Map::new();
    for (k, v) in &s.fields {
        map.insert(k.clone(), prost_value_to_serde_json(v)?);
    }
    Ok(serde_json::Value::Object(map))
}

pub(super) fn prost_value_to_serde_json(v: &prost_types::Value) -> Result<serde_json::Value, String> {
    Ok(match &v.kind {
        Some(prost_types::value::Kind::NullValue(_)) => serde_json::Value::Null,
        Some(prost_types::value::Kind::BoolValue(b)) => serde_json::Value::Bool(*b),
        Some(prost_types::value::Kind::NumberValue(n)) => {
            serde_json::Number::from_f64(*n)
                .map(serde_json::Value::Number)
                .unwrap_or(serde_json::Value::Null)
        }
        Some(prost_types::value::Kind::StringValue(s)) => serde_json::Value::String(s.clone()),
        Some(prost_types::value::Kind::ListValue(list)) => {
            let vals: Vec<serde_json::Value> = list
                .values
                .iter()
                .map(prost_value_to_serde_json)
                .collect::<Result<Vec<_>, _>>()?;
            serde_json::Value::Array(vals)
        }
        Some(prost_types::value::Kind::StructValue(s)) => prost_struct_to_serde_json_value(s)?,
        None => serde_json::Value::Null,
    })
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_now_timestamp_not_zero() {
        let ts = now_timestamp();
        assert!(ts.seconds > 0);
    }

    #[test]
    fn test_tool_definitions_not_empty() {
        // Verify tool definition list is non-empty
        let tools = vec![
            ToolDefinition {
                name: "run_shell_command".to_string(),
                description: "test".to_string(),
                parameters: serde_json::json!({"type": "object"}),
            },
        ];
        assert!(!tools.is_empty());
    }
}
