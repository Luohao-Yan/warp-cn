//! Context window management and truncation for the local agent.
//!
//! Responsible for:
//! - Estimating token counts for messages sent to the LLM.
//! - Compacting the conversation by summarizing old turns via an LLM call.
//! - Truncating the conversation when compaction fails or is unavailable.
//! - Preserving the system prompt and the most recent turns.
//! - Persisting context snapshots before compaction/truncation so the full history can be recovered.

use std::sync::Arc;

use futures_util::StreamExt;
use warp_multi_agent_api as api;

use ai::local_provider::{
    ChatCompletionProvider, ChatCompletionRequest, ChatMessage, MessageRole, StreamEvent,
};

use super::errors::ContextManagerError;
use super::task_store::LocalAgentTaskStore;

/// Approximate characters per token for English text with code.
/// Conservative estimate to avoid under-counting.
const CHARS_PER_TOKEN: usize = 3;

/// The number of recent exchanges to always preserve during truncation.
const PRESERVED_RECENT_EXCHANGES: usize = 4;

/// Manages the context window for a local agent conversation.
pub struct ContextManager {
    task_id: String,
    max_context_tokens: usize,
    task_store: Arc<LocalAgentTaskStore>,
    system_prompt: String,
    snapshot_seq: i32,
    provider: Option<Arc<dyn ChatCompletionProvider>>,
    model_id: String,
}

impl ContextManager {
    /// Create a new context manager.
    pub fn new(
        task_id: String,
        max_context_tokens: usize,
        task_store: Arc<LocalAgentTaskStore>,
        system_prompt: String,
    ) -> Self {
        Self {
            task_id,
            max_context_tokens,
            task_store,
            system_prompt,
            snapshot_seq: 0,
            provider: None,
            model_id: String::new(),
        }
    }

    /// Provide the LLM provider and model ID for context compaction.
    /// Must be called before `compact()` will work.
    pub fn set_provider(&mut self, provider: Arc<dyn ChatCompletionProvider>, model_id: String) {
        self.provider = Some(provider);
        self.model_id = model_id;
    }

    /// Returns the maximum context window in tokens.
    pub fn max_context_tokens(&self) -> usize {
        self.max_context_tokens
    }

    /// Estimate the token count for a string.
    fn estimate_tokens(text: &str) -> usize {
        if text.is_empty() {
            return 0;
        }
        // Simple heuristic: characters / CHARS_PER_TOKEN, with a floor of 1 token for
        // non-empty strings.
        (text.len().max(1) / CHARS_PER_TOKEN).max(1)
    }

    /// Estimate the token count for a protobuf Message by examining its variant.
    fn estimate_message_tokens(msg: &api::Message) -> usize {
        let mut total = 0;

        // Role overhead (system/user/assistant/tool) is roughly 4 tokens.
        total += 4;

        // Count content based on the message oneof variant.
        match &msg.message {
            Some(api::message::Message::UserQuery(uq)) => {
                // query is plain String
                total += Self::estimate_tokens(&uq.query);
            }
            Some(api::message::Message::AgentOutput(ao)) => {
                total += Self::estimate_tokens(&ao.text);
            }
            Some(api::message::Message::ToolCall(tc)) => {
                total += 8; // overhead for tool_call wrapper
                match &tc.tool {
                    Some(api::message::tool_call::Tool::RunShellCommand(shell)) => {
                        // command is plain String
                        total += Self::estimate_tokens(&shell.command);
                    }
                    Some(api::message::tool_call::Tool::SearchCodebase(search)) => {
                        // query and codebase_path are plain String
                        total += Self::estimate_tokens(&search.query);
                        total += Self::estimate_tokens(&search.codebase_path);
                    }
                    Some(api::message::tool_call::Tool::ReadFiles(read)) => {
                        for file in &read.files {
                            // name is plain String
                            total += Self::estimate_tokens(&file.name);
                        }
                    }
                    Some(api::message::tool_call::Tool::Grep(grep)) => {
                        for q in &grep.queries {
                            total += Self::estimate_tokens(q);
                        }
                        // path is plain String
                        total += Self::estimate_tokens(&grep.path);
                    }
                    Some(api::message::tool_call::Tool::CallMcpTool(mcp)) => {
                        // name and server_id are plain String
                        total += Self::estimate_tokens(&mcp.name);
                        total += Self::estimate_tokens(&mcp.server_id);
                    }
                    Some(api::message::tool_call::Tool::Subagent(sub)) => {
                        // payload is plain String
                        total += Self::estimate_tokens(&sub.payload);
                    }
                    Some(api::message::tool_call::Tool::FileGlob(glob)) => {
                        for pattern in &glob.patterns {
                            total += Self::estimate_tokens(pattern);
                        }
                        // path is plain String
                        total += Self::estimate_tokens(&glob.path);
                    }
                    Some(api::message::tool_call::Tool::ApplyFileDiffs(diffs)) => {
                        // summary is plain String
                        total += Self::estimate_tokens(&diffs.summary);
                    }
                    Some(api::message::tool_call::Tool::AskUserQuestion(ask)) => {
                        for q in &ask.questions {
                            // question is plain String
                            total += Self::estimate_tokens(&q.question);
                        }
                    }
                    Some(api::message::tool_call::Tool::SuggestPlan(plan)) => {
                        // summary is plain String
                        total += Self::estimate_tokens(&plan.summary);
                    }
                    Some(api::message::tool_call::Tool::ReadMcpResource(read)) => {
                        // uri and server_id are plain String
                        total += Self::estimate_tokens(&read.uri);
                        total += Self::estimate_tokens(&read.server_id);
                    }
                    _ => {
                        // Unknown tool variant: estimate from the serialized form.
                        let len = prost::Message::encoded_len(tc);
                        total += (len / CHARS_PER_TOKEN).max(1);
                    }
                }
            }
            Some(api::message::Message::ToolCallResult(tcr)) => {
                total += 8; // overhead for result wrapper
                match &tcr.result {
                    Some(api::message::tool_call_result::Result::ReadShellCommandOutput(r)) => {
                        match &r.result {
                            Some(api::read_shell_command_output_result::Result::CommandFinished(cf)) => {
                                // output is plain String
                                total += Self::estimate_tokens(&cf.output);
                            }
                            _ => total += 4,
                        }
                    }
                    Some(api::message::tool_call_result::Result::RunShellCommand(r)) => {
                        match &r.result {
                            Some(api::run_shell_command_result::Result::CommandFinished(cf)) => {
                                total += Self::estimate_tokens(&cf.output);
                            }
                            _ => total += 4,
                        }
                    }
                    Some(api::message::tool_call_result::Result::CallMcpTool(r)) => {
                        match &r.result {
                            Some(api::call_mcp_tool_result::Result::Success(s)) => {
                                for item in &s.results {
                                    match &item.result {
                                        Some(api::call_mcp_tool_result::success::result::Result::Text(t)) => {
                                            // text is plain String
                                            total += Self::estimate_tokens(&t.text);
                                        }
                                        _ => total += 4,
                                    }
                                }
                            }
                            Some(api::call_mcp_tool_result::Result::Error(e)) => {
                                // message is plain String
                                total += Self::estimate_tokens(&e.message);
                            }
                            _ => total += 4,
                        }
                    }
                    _ => {
                        let len = prost::Message::encoded_len(tcr);
                        total += (len / CHARS_PER_TOKEN).max(1);
                    }
                }
            }
            Some(api::message::Message::ModelUsed(mu)) => {
                // model_id and model_display_name are plain String
                total += Self::estimate_tokens(&mu.model_id);
                total += Self::estimate_tokens(&mu.model_display_name);
            }
            _ => {
                // Unknown message variant: estimate from serialized length.
                let len = prost::Message::encoded_len(msg);
                total += (len / CHARS_PER_TOKEN).max(1);
            }
        }

        total
    }

    /// Estimate the total token count for a list of messages, including the system prompt.
    pub fn estimate_total_tokens(messages: &[api::Message], system_prompt: &str) -> usize {
        let system_tokens = Self::estimate_tokens(system_prompt) + 8; // role overhead
        let message_tokens: usize = messages.iter().map(|m| Self::estimate_message_tokens(m)).sum();
        system_tokens + message_tokens
    }

    /// Check if the messages fit within the context window.
    pub fn fits_in_context(&self, messages: &[api::Message]) -> bool {
        let total = Self::estimate_total_tokens(messages, &self.system_prompt);
        total <= self.max_context_tokens
    }

    /// Compact the conversation by using the LLM to summarize older turns.
    ///
    /// Strategy:
    /// 1. Save a snapshot of the current messages to the task store.
    /// 2. Always keep the first user message (the original prompt).
    /// 3. Always keep the most recent PRESERVED_RECENT_EXCHANGES exchanges.
    /// 4. Send the older middle messages to the LLM for summarization.
    /// 5. Replace the middle messages with a `Summarization` message containing the summary.
    ///
    /// Falls back to `truncate()` if no provider is configured or the LLM call fails.
    pub async fn compact(
        &mut self,
        messages: &[api::Message],
    ) -> Result<Vec<api::Message>, ContextManagerError> {
        // Save snapshot before compaction
        let token_count = Self::estimate_total_tokens(messages, &self.system_prompt);
        let snapshot_data = serialize_messages_for_snapshot(messages);
        if let Err(e) = self.task_store.save_context_snapshot_raw(
            &self.task_id,
            self.snapshot_seq,
            &snapshot_data,
            token_count,
        ) {
            log::warn!("Failed to save context snapshot before compaction: {e}");
        }
        self.snapshot_seq += 1;

        if self.fits_in_context(messages) {
            return Ok(messages.to_vec());
        }

        let provider = match &self.provider {
            Some(p) => p.clone(),
            None => {
                log::info!("No provider set for context compaction, falling back to truncation");
                return self.truncate(messages);
            }
        };

        // Build the truncated list structure: first message + summary + recent messages
        let mut result = Vec::new();

        if let Some(first) = messages.first() {
            result.push(first.clone());
        }

        let recent_start = messages.len().saturating_sub(PRESERVED_RECENT_EXCHANGES * 2);
        let recent_messages: Vec<api::Message> = messages[recent_start..].to_vec();

        // Collect the old messages that will be summarized (between first and recent)
        let old_messages = if messages.len() > 1 && recent_start > 1 {
            &messages[1..recent_start]
        } else {
            &[]
        };

        if old_messages.is_empty() {
            return self.truncate(messages);
        }

        // Build a summarization prompt from the old messages
        let summary_prompt = build_summary_prompt(old_messages);

        let request = ChatCompletionRequest {
            model: self.model_id.clone(),
            messages: vec![
                ChatMessage {
                    role: MessageRole::System,
                    content: "You are a helpful assistant that creates concise summaries of \
                     AI agent conversations. Summarize the key actions taken, results \
                     obtained, and current state. Be specific about what was done and \
                     what was found — do not lose important details like file paths, \
                     command outputs, or decisions made.".to_string(),
                    tool_calls: None,
                    tool_call_id: None,
                },
                ChatMessage {
                    role: MessageRole::User,
                    content: summary_prompt,
                    tool_calls: None,
                    tool_call_id: None,
                },
            ],
            tools: vec![],
            tool_choice: None,
            temperature: Some(0.3),
            max_tokens: Some(2048),
            stream: false,
        };

        // Call the LLM for summarization
        let summary_text = match provider.chat_completion_stream(request).await {
            Ok(stream) => {
                let mut text = String::new();
                let mut stream = std::pin::pin!(stream);
                while let Some(event_result) = stream.next().await {
                    match event_result {
                        Ok(StreamEvent::TextDelta(delta)) => text.push_str(&delta),
                        Ok(StreamEvent::Done) => break,
                        Ok(StreamEvent::Error(msg)) => {
                            log::warn!("LLM error during context compaction: {msg}, falling back to truncation");
                            return self.truncate(messages);
                        }
                        Err(e) => {
                            log::warn!("LLM stream error during context compaction: {e}, falling back to truncation");
                            return self.truncate(messages);
                        }
                        _ => {}
                    }
                }
                if text.is_empty() {
                    log::warn!("LLM returned empty summary during compaction, falling back to truncation");
                    return self.truncate(messages);
                }
                text
            }
            Err(e) => {
                log::warn!("Failed to call LLM for context compaction: {e}, falling back to truncation");
                return self.truncate(messages);
            }
        };

        // Insert the Summarization message
        let summary_msg = api::Message {
            id: uuid::Uuid::new_v4().to_string(),
            task_id: self.task_id.clone(),
            request_id: String::new(),
            timestamp: Some(now_timestamp()),
            message: Some(api::message::Message::Summarization(
                api::message::Summarization {
                    summary_type: Some(
                        api::message::summarization::SummaryType::ConversationSummary(
                            api::message::summarization::ConversationSummary {
                                summary: summary_text,
                                token_count: 0,
                            },
                        ),
                    ),
                    finished_duration: None,
                },
            )),
            ..Default::default()
        };
        result.push(summary_msg);
        result.extend(recent_messages);

        // Verify it fits; if still too large, fall back to truncation
        if !self.fits_in_context(&result) {
            log::info!("Compacted context still too large, falling back to truncation");
            return self.truncate(messages);
        }

        Ok(result)
    }

    /// Truncate the conversation to fit within the context window.
    ///
    /// Strategy:
    /// 1. Save a snapshot of the current messages to the task store.
    /// 2. Always keep the first user message (the original prompt).
    /// 3. Always keep the most recent PRESERVED_RECENT_EXCHANGES exchanges.
    /// 4. Remove older messages (from the middle) until the total fits.
    /// 5. Insert a truncation notice message where old messages were removed.
    ///
    /// Returns the truncated message list.
    pub fn truncate(
        &mut self,
        messages: &[api::Message],
    ) -> Result<Vec<api::Message>, ContextManagerError> {
        // Save snapshot before truncation
        let token_count = Self::estimate_total_tokens(messages, &self.system_prompt);
        // Serialize messages with prost for the snapshot (not serde_json,
        // since api::Message may not impl Serialize/Deserialize).
        let snapshot_data = serialize_messages_for_snapshot(messages);
        if let Err(e) = self.task_store.save_context_snapshot_raw(
            &self.task_id,
            self.snapshot_seq,
            &snapshot_data,
            token_count,
        ) {
            log::warn!("Failed to save context snapshot before truncation: {e}");
        }
        self.snapshot_seq += 1;

        if self.fits_in_context(messages) {
            return Ok(messages.to_vec());
        }

        // Build the truncated list.
        // We want to keep:
        //   - The first message (typically the user's prompt)
        //   - The last N exchanges (assistant reply + tool result pairs)
        //   - A truncation notice in the middle

        let mut result = Vec::new();

        // Always include the first message (typically the user's prompt).
        if let Some(first) = messages.first() {
            result.push(first.clone());
        }

        // Collect the recent exchanges to preserve.
        let recent_start = messages.len().saturating_sub(PRESERVED_RECENT_EXCHANGES * 2);
        let recent_messages: Vec<api::Message> =
            messages[recent_start..].to_vec();

        // Add a truncation notice as a UserQuery message.
        // query is plain String, not Option<String>
        let truncation_notice = api::Message {
            id: uuid::Uuid::new_v4().to_string(),
            task_id: self.task_id.clone(),
            request_id: String::new(),
            timestamp: Some(now_timestamp()),
            message: Some(api::message::Message::UserQuery(
                api::message::UserQuery {
                    query: "[Context truncated: older conversation turns have been removed to fit \
                     within the context window. The full history is available in the task \
                     store.]".to_string(),
                    ..Default::default()
                },
            )),
            ..Default::default()
        };
        result.push(truncation_notice);

        // Add the preserved recent messages.
        result.extend(recent_messages);

        // Verify it fits; if still too large, truncate more aggressively by only keeping
        // the last 2 exchanges.
        if !self.fits_in_context(&result) {
            let aggressive_start = messages.len().saturating_sub(2 * 2);
            result.truncate(1); // Keep first message + truncation notice
            // query is plain String
            result.push(api::Message {
                id: uuid::Uuid::new_v4().to_string(),
                task_id: self.task_id.clone(),
                request_id: String::new(),
                timestamp: Some(now_timestamp()),
                message: Some(api::message::Message::UserQuery(
                    api::message::UserQuery {
                        query: "[Context aggressively truncated: only the most recent exchanges \
                         are preserved.]".to_string(),
                        ..Default::default()
                    },
                )),
                ..Default::default()
            });
            result.extend_from_slice(&messages[aggressive_start..]);
        }

        // Final check: if even the most aggressive truncation doesn't fit, return error
        if !self.fits_in_context(&result) {
            return Err(ContextManagerError::EmptyContext);
        }

        Ok(result)
    }

    /// Build the full message list to send to the LLM, starting with the system prompt.
    pub fn build_llm_messages(&self, conversation_messages: &[api::Message]) -> Vec<api::Message> {
        let mut messages = Vec::new();

        // System prompt as the first message (as a UserQuery with system role hint).
        // query is plain String
        messages.push(api::Message {
            id: uuid::Uuid::new_v4().to_string(),
            task_id: self.task_id.clone(),
            request_id: String::new(),
            timestamp: Some(now_timestamp()),
            message: Some(api::message::Message::UserQuery(
                api::message::UserQuery {
                    query: self.system_prompt.clone(),
                    ..Default::default()
                },
            )),
            ..Default::default()
        });

        messages.extend_from_slice(conversation_messages);
        messages
    }

    /// Estimate the output token budget given the current context.
    /// Reserves room for the model's response.
    pub fn output_token_budget(&self, messages: &[api::Message]) -> usize {
        let used = Self::estimate_total_tokens(messages, &self.system_prompt);
        // Reserve at least 4096 tokens for output, but cap at the context window.
        let budget = self.max_context_tokens.saturating_sub(used);
        budget.max(0)
    }
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Serialize messages for snapshot storage using prost binary encoding,
/// then base64-encode the result for storage as a text column.
fn serialize_messages_for_snapshot(messages: &[api::Message]) -> String {
    let mut buf = Vec::new();
    for msg in messages {
        use prost::Message;
        let mut msg_buf = Vec::new();
        if msg.encode(&mut msg_buf).is_ok() {
            // Prefix each encoded message with its length (4 bytes LE) so we can
            // deserialize them back individually.
            let len = msg_buf.len() as u32;
            buf.extend_from_slice(&len.to_le_bytes());
            buf.extend_from_slice(&msg_buf);
        }
    }
    // Base64-encode the whole buffer for safe storage in a TEXT column.
    use base64::Engine as _;
    base64::engine::general_purpose::STANDARD.encode(&buf)
}

/// Get the current time as a protobuf Timestamp.
fn now_timestamp() -> prost_types::Timestamp {
    let now = chrono::Utc::now();
    prost_types::Timestamp {
        seconds: now.timestamp(),
        nanos: now.timestamp_subsec_nanos() as i32,
    }
}

/// Build a prompt string from old messages that will be sent to the LLM for summarization.
fn build_summary_prompt(old_messages: &[api::Message]) -> String {
    let mut parts = Vec::new();
    parts.push(
        "Please summarize the following conversation history between a user and an AI assistant \
         working in a terminal. Focus on:\n\
         - Key actions taken (commands run, files read/edited)\n\
         - Important results or findings\n\
         - Decisions made and their outcomes\n\
         - Current state of any ongoing work\n\n\
         Conversation history to summarize:\n---"
            .to_string(),
    );

    for msg in old_messages {
        let text = match &msg.message {
            Some(api::message::Message::UserQuery(uq)) => {
                format!("[User] {}", uq.query)
            }
            Some(api::message::Message::AgentOutput(ao)) => {
                format!("[Assistant] {}", truncate_text(&ao.text, 500))
            }
            Some(api::message::Message::ToolCall(tc)) => {
                let tool_name = match &tc.tool {
                    Some(api::message::tool_call::Tool::RunShellCommand(s)) => {
                        format!("run_shell_command({})", truncate_text(&s.command, 200))
                    }
                    Some(api::message::tool_call::Tool::ReadFiles(r)) => {
                        let names: Vec<&str> = r.files.iter().map(|f| f.name.as_str()).collect();
                        format!("read_files({})", names.join(", "))
                    }
                    Some(api::message::tool_call::Tool::Grep(g)) => {
                        format!("grep({})", g.queries.join(", "))
                    }
                    Some(api::message::tool_call::Tool::FileGlob(_)) => "file_glob".to_string(),
                    Some(api::message::tool_call::Tool::SearchCodebase(s)) => {
                        format!("search_codebase({})", truncate_text(&s.query, 200))
                    }
                    Some(api::message::tool_call::Tool::ApplyFileDiffs(d)) => {
                        format!("apply_file_diffs({})", truncate_text(&d.summary, 200))
                    }
                    Some(api::message::tool_call::Tool::Subagent(sub)) => {
                        format!("subagent({})", truncate_text(&sub.payload, 200))
                    }
                    _ => "unknown_tool".to_string(),
                };
                format!("[Tool Call] {tool_name}")
            }
            Some(api::message::Message::ToolCallResult(tcr)) => {
                let result_text = format_tool_result(tcr);
                format!("[Tool Result] {}", truncate_text(&result_text, 500))
            }
            Some(api::message::Message::Summarization(summ)) => {
                if let Some(api::message::summarization::SummaryType::ConversationSummary(cs)) =
                    &summ.summary_type
                {
                    format!("[Previous Summary] {}", truncate_text(&cs.summary, 500))
                } else {
                    String::new()
                }
            }
            _ => String::new(),
        };

        if !text.is_empty() {
            parts.push(text);
        }
    }

    parts.push("\n---\nProvide a concise summary of the above conversation.".to_string());
    parts.join("\n\n")
}

/// Truncate text to a character limit with ellipsis.
fn truncate_text(text: &str, limit: usize) -> String {
    if text.len() <= limit {
        text.to_string()
    } else {
        let truncated: String = text.chars().take(limit).collect();
        format!("{truncated}...")
    }
}

/// Extract a short text representation from a ToolCallResult message.
fn format_tool_result(tcr: &api::message::ToolCallResult) -> String {
    match &tcr.result {
        Some(api::message::tool_call_result::Result::RunShellCommand(r)) => match &r.result {
            Some(api::run_shell_command_result::Result::CommandFinished(cf)) => {
                truncate_text(&cf.output, 300)
            }
            Some(api::run_shell_command_result::Result::PermissionDenied(_)) => {
                "PERMISSION DENIED".to_string()
            }
            _ => "(pending)".to_string(),
        },
        Some(api::message::tool_call_result::Result::ReadShellCommandOutput(r)) => {
            match &r.result {
                Some(api::read_shell_command_output_result::Result::CommandFinished(cf)) => {
                    truncate_text(&cf.output, 300)
                }
                _ => "(pending)".to_string(),
            }
        }
        Some(api::message::tool_call_result::Result::CallMcpTool(r)) => match &r.result {
            Some(api::call_mcp_tool_result::Result::Success(s)) => {
                let texts: Vec<String> = s
                    .results
                    .iter()
                    .filter_map(|item| match &item.result {
                        Some(api::call_mcp_tool_result::success::result::Result::Text(t)) => {
                            Some(truncate_text(&t.text, 200))
                        }
                        _ => None,
                    })
                    .collect();
                texts.join("; ")
            }
            Some(api::call_mcp_tool_result::Result::Error(e)) => {
                format!("MCP error: {}", truncate_text(&e.message, 200))
            }
            _ => "(pending)".to_string(),
        },
        _ => {
            let len = prost::Message::encoded_len(tcr);
            format!("(tool result, ~{} bytes)", len)
        }
    }
}
