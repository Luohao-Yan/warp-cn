//! Tool dispatch for the local agent orchestration engine.
//!
//! Executes tool calls produced by the LLM and returns structured results.
//! Parallel execution is used when multiple independent tool calls are present
//! in a single assistant turn.

use std::path::{Path, PathBuf};
use std::process::Stdio;
use std::sync::Arc;
use std::time::Duration;

use futures::future::join_all;
use tokio::process::Command as TokioCommand;
use tokio_util::sync::CancellationToken;
use uuid::Uuid;
use warp_multi_agent_api as api;

use super::child_agent::ChildAgentSpawner;
use super::errors::LocalAgentError;

/// Maximum output size for shell commands (bytes). Truncate beyond this.
const MAX_SHELL_OUTPUT: usize = 100_000;

/// Default timeout for shell commands.
const DEFAULT_SHELL_TIMEOUT_SECS: u64 = 120;

/// Maximum number of concurrent tool executions.
const MAX_CONCURRENT_TOOLS: usize = 8;

/// Timeout for MCP tool calls and resource reads.
const MCP_TIMEOUT_SECS: u64 = 30;

/// Result of executing a single tool call.
#[derive(Debug, Clone)]
pub struct ToolResult {
    pub tool_call_id: String,
    pub tool_name: String,
    pub success: bool,
    pub output: String,
    /// Protobuf-encoded tool call result to embed in a Message.
    pub proto_result: api::message::ToolCallResult,
}

/// Dispatches tool calls from the LLM to their implementations.
pub struct ToolExecutor {
    working_dir: PathBuf,
    cancellation_token: CancellationToken,
    child_spawner: Arc<ChildAgentSpawner>,
    shell_timeout: Duration,
    /// Parent task ID for child agent hierarchy.
    parent_task_id: String,
    /// Conversation ID for child agent context.
    conversation_id: String,
    /// Model ID that child agents should inherit.
    model_id: String,
    /// Max context tokens for child agents.
    max_context_tokens: usize,
    /// MCP spawner for accessing TemplatableMCPServerManager.
    mcp_spawner: Option<warpui::ModelSpawner<crate::ai::mcp::TemplatableMCPServerManager>>,
}

impl ToolExecutor {
    /// Create a new tool executor.
    pub fn new(
        working_dir: PathBuf,
        cancellation_token: CancellationToken,
        child_spawner: Arc<ChildAgentSpawner>,
        parent_task_id: String,
        conversation_id: String,
        model_id: String,
        max_context_tokens: usize,
        mcp_spawner: Option<warpui::ModelSpawner<crate::ai::mcp::TemplatableMCPServerManager>>,
    ) -> Self {
        Self {
            working_dir,
            cancellation_token,
            child_spawner,
            shell_timeout: Duration::from_secs(DEFAULT_SHELL_TIMEOUT_SECS),
            parent_task_id,
            conversation_id,
            model_id,
            max_context_tokens,
            mcp_spawner,
        }
    }

    /// Set a custom shell timeout.
    pub fn with_shell_timeout(mut self, timeout: Duration) -> Self {
        self.shell_timeout = timeout;
        self
    }

    /// Execute multiple tool calls in parallel.
    ///
    /// When the LLM returns multiple tool calls in a single turn, we execute
    /// them concurrently (up to MAX_CONCURRENT_TOOLS) and collect all results.
    /// Cancellation is checked between tool executions.
    pub async fn execute_tools(
        &self,
        tool_calls: &[api::message::ToolCall],
    ) -> Vec<ToolResult> {
        let mut futures = Vec::new();
        for tc in tool_calls.iter().take(MAX_CONCURRENT_TOOLS) {
            let tool_call_id = if tc.tool_call_id.is_empty() {
                Uuid::new_v4().to_string()
            } else {
                tc.tool_call_id.clone()
            };
            let tool_name = match &tc.tool {
                Some(api::message::tool_call::Tool::RunShellCommand(_)) => "run_shell_command",
                Some(api::message::tool_call::Tool::ReadFiles(_)) => "read_files",
                Some(api::message::tool_call::Tool::Grep(_)) => "grep",
                Some(api::message::tool_call::Tool::FileGlob(_)) => "file_glob",
                Some(api::message::tool_call::Tool::SearchCodebase(_)) => "search_codebase",
                Some(api::message::tool_call::Tool::CallMcpTool(_)) => "call_mcp_tool",
                Some(api::message::tool_call::Tool::ReadMcpResource(_)) => "read_mcp_resource",
                Some(api::message::tool_call::Tool::ApplyFileDiffs(_)) => "apply_file_diffs",
                Some(api::message::tool_call::Tool::Subagent(_)) => "subagent",
                Some(api::message::tool_call::Tool::AskUserQuestion(_)) => "ask_user_question",
                Some(api::message::tool_call::Tool::SuggestPlan(_)) => "suggest_plan",
                _ => "unknown",
            }.to_string();
            let result_fut = self.execute_single(tc);

            futures.push(async move {
                let result = result_fut.await;
                ToolResult {
                    tool_call_id,
                    tool_name,
                    success: result.is_ok(),
                    output: match &result {
                        Ok(o) => o.clone(),
                        Err(e) => format!("Error: {e}"),
                    },
                    proto_result: match result {
                        Ok(output) => build_tool_call_result(tc, &output),
                        Err(e) => build_tool_call_error(tc, &e),
                    },
                }
            });
        }
        join_all(futures).await
    }

    /// Execute a single tool call.
    pub async fn execute_single(
        &self,
        tc: &api::message::ToolCall,
    ) -> Result<String, LocalAgentError> {
        if self.cancellation_token.is_cancelled() {
            return Err(LocalAgentError::Cancelled);
        }

        match tc.tool.as_ref() {
            Some(api::message::tool_call::Tool::RunShellCommand(shell)) => {
                self.run_shell_command(&shell.command).await
            }
            Some(api::message::tool_call::Tool::ReadFiles(read)) => {
                let paths: Vec<String> = read.files.iter().map(|f| f.name.clone()).collect();
                self.read_files(&paths).await
            }
            Some(api::message::tool_call::Tool::Grep(grep)) => {
                let queries_joined = grep.queries.join(" ");
                self.grep(&queries_joined, Some(&grep.path)).await
            }
            Some(api::message::tool_call::Tool::FileGlob(glob)) => {
                self.file_glob(&glob.patterns, Some(&glob.path)).await
            }
            Some(api::message::tool_call::Tool::SearchCodebase(search)) => {
                self.search_codebase(&search.query).await
            }
            Some(api::message::tool_call::Tool::CallMcpTool(mcp)) => {
                self.call_mcp_tool(mcp).await
            }
            Some(api::message::tool_call::Tool::ReadMcpResource(read)) => {
                self.read_mcp_resource(read).await
            }
            Some(api::message::tool_call::Tool::ApplyFileDiffs(diffs)) => {
                self.apply_file_diffs(&diffs.diffs).await
            }
            Some(api::message::tool_call::Tool::Subagent(sub)) => {
                self.spawn_subagent(sub).await
            }
            Some(api::message::tool_call::Tool::AskUserQuestion(ask)) => {
                // AskUserQuestion is at api::AskUserQuestion, but the tool
                // variant wraps it in the tool_call oneof. The questions
                // field is Vec<ask_user_question::Question> where each Question
                // has a plain String `question` field (not Option<String>).
                let question_texts: Vec<String> = ask.questions.iter()
                    .map(|q| q.question.clone())
                    .collect();
                Ok(format!("Questions for user: {}", question_texts.join("; ")))
            }
            Some(api::message::tool_call::Tool::SuggestPlan(plan)) => {
                Ok(format!("Suggested plan: {}", plan.summary))
            }
            _ => Err(LocalAgentError::ToolExecution {
                tool_name: "unknown".to_string(),
                message: "Unsupported or unrecognized tool call".to_string(),
            }),
        }
    }

    // -- Shell command execution ---------------------------------------------

    async fn run_shell_command(&self, command: &str) -> Result<String, LocalAgentError> {
        // Use the platform's default shell to execute the command.
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

        let child = TokioCommand::new(shell)
            .arg(shell_arg)
            .arg(command)
            .current_dir(&self.working_dir)
            .stdout(Stdio::piped())
            .stderr(Stdio::piped())
            .spawn()
            .map_err(|_| LocalAgentError::ShellCommand {
                command: command.to_string(),
                exit_code: -1,
            })?;

        let result = tokio::time::timeout(self.shell_timeout, child.wait_with_output())
            .await
            .map_err(|_| LocalAgentError::ShellTimeout {
                command: command.to_string(),
                timeout_secs: self.shell_timeout.as_secs(),
            })?
            .map_err(|_| LocalAgentError::ShellCommand {
                command: command.to_string(),
                exit_code: -1,
            })?;

        let stdout = String::from_utf8_lossy(&result.stdout);
        let stderr = String::from_utf8_lossy(&result.stderr);
        let mut output = format!("{stdout}{stderr}");
        truncate_string(&mut output, MAX_SHELL_OUTPUT);

        if result.status.success() {
            Ok(output)
        } else {
            Err(LocalAgentError::ShellCommand {
                command: command.to_string(),
                exit_code: result.status.code().unwrap_or(-1),
            })
        }
    }

    // -- File reading -------------------------------------------------------

    async fn read_files(&self, paths: &[String]) -> Result<String, LocalAgentError> {
        let mut contents = String::new();
        for path_str in paths {
            let path = self.resolve_path(Path::new(path_str));
            match tokio::fs::read_to_string(&path).await {
                Ok(data) => {
                    let mut data = data;
                    truncate_string(&mut data, MAX_SHELL_OUTPUT);
                    contents.push_str(&format!("=== {} ===\n{data}\n\n", path.display()));
                }
                Err(e) => {
                    contents.push_str(&format!(
                        "=== {} ===\n[Error reading file: {e}]\n\n",
                        path.display()
                    ));
                }
            }
        }
        if contents.is_empty() {
            contents = "(No files read)\n".to_string();
        }
        Ok(contents)
    }

    // -- Grep search ---------------------------------------------------------

    async fn grep(&self, query: &str, path: Option<&str>) -> Result<String, LocalAgentError> {
        let search_dir = path
            .map(|p| self.resolve_path(Path::new(p)))
            .unwrap_or_else(|| self.working_dir.clone());

        // Use ripgrep as a subprocess for consistent results.
        // Pass arguments directly to avoid shell injection.
        let child = TokioCommand::new("rg")
            .arg("--no-heading")
            .arg("--color=never")
            .arg("--max-count=50")
            .arg(query)
            .arg(&search_dir)
            .stdout(Stdio::piped())
            .stderr(Stdio::piped())
            .spawn()
            .map_err(|e| LocalAgentError::Search(format!("Failed to spawn rg: {e}")))?;

        let output = child
            .wait_with_output()
            .await
            .map_err(|e| LocalAgentError::Search(format!("rg execution error: {e}")))?;

        let stdout = String::from_utf8_lossy(&output.stdout);
        let stderr = String::from_utf8_lossy(&output.stderr);
        let mut result = format!("{stdout}{stderr}");
        truncate_string(&mut result, MAX_SHELL_OUTPUT);

        if result.is_empty() {
            result = "(No matches found)\n".to_string();
        }
        Ok(result)
    }

    // -- File globbing -------------------------------------------------------

    async fn file_glob(
        &self,
        patterns: &[String],
        path: Option<&str>,
    ) -> Result<String, LocalAgentError> {
        let search_dir = path
            .map(|p| self.resolve_path(Path::new(p)))
            .unwrap_or_else(|| self.working_dir.clone());

        let mut all_matches = Vec::new();
        for entry in walkdir::WalkDir::new(&search_dir)
            .into_iter()
            .filter_entry(|e| {
                // Skip hidden directories and common non-project directories.
                let name = e.file_name().to_string_lossy();
                !name.starts_with('.')
                    && name != "node_modules"
                    && name != "target"
                    && name != ".git"
            })
            .flatten()
        {
            let path = entry.path();
            if let Ok(relative) = path.strip_prefix(&search_dir) {
                let relative_str = relative.to_string_lossy();
                // Check each pattern against the relative path.
                for pattern in patterns {
                    if glob_match(pattern, &relative_str) {
                        all_matches.push(relative_str.to_string());
                        break; // Avoid duplicate entries for the same path
                    }
                }
            }
        }

        all_matches.sort();
        all_matches.dedup();
        if all_matches.is_empty() {
            return Ok("(No files matched)\n".to_string());
        }

        let mut result = String::new();
        for m in &all_matches {
            result.push_str(m);
            result.push('\n');
        }
        truncate_string(&mut result, MAX_SHELL_OUTPUT);
        Ok(result)
    }

    // -- Codebase search -----------------------------------------------------

    async fn search_codebase(&self, query: &str) -> Result<String, LocalAgentError> {
        // Fall back to grep-based search for the local implementation.
        self.grep(query, None).await
    }

    // -- MCP tool call -------------------------------------------------------

    async fn call_mcp_tool(&self, mcp: &api::message::tool_call::CallMcpTool) -> Result<String, LocalAgentError> {
        let Some(mcp_spawner) = self.mcp_spawner.as_ref() else {
            return Err(LocalAgentError::McpTool {
                tool_name: mcp.name.clone(),
                detail: "MCP not available (no spawner configured)".to_string(),
            });
        };

        let server_id = Uuid::parse_str(&mcp.server_id).ok();
        let tool_name = mcp.name.clone();

        // Convert prost_types::Struct to serde_json::Map
        let mut arguments = match mcp.args.as_ref() {
            Some(proto_struct) => {
                match super::runner::prost_struct_to_serde_json_value(proto_struct) {
                    Ok(serde_json::Value::Object(map)) => map,
                    Ok(_) => {
                        return Err(LocalAgentError::McpTool {
                            tool_name: tool_name.clone(),
                            detail: "MCP tool args is not a JSON object".to_string(),
                        });
                    }
                    Err(e) => {
                        return Err(LocalAgentError::McpTool {
                            tool_name: tool_name.clone(),
                            detail: format!("Failed to convert proto args: {e}"),
                        });
                    }
                }
            }
            None => serde_json::Map::new(),
        };

        // Coerce integer args: protobuf Struct stores everything as f64,
        // which can produce "5.0" for integer fields that strict servers reject.
        let tool_name_for_schema = tool_name.clone();
        let input_schema: Option<serde_json::Map<String, serde_json::Value>> = mcp_spawner
            .spawn(move |manager, _ctx| manager.tool_input_schema(server_id, &tool_name_for_schema))
            .await
            .ok()
            .flatten()
            .and_then(|schema| match serde_json::to_value(&*schema) {
                Ok(serde_json::Value::Object(map)) => Some(map),
                _ => None,
            });
        if let Some(schema) = input_schema {
            coerce_integer_args(&mut arguments, &schema);
        }

        // Resolve the peer (prefer specific server, fall back to any server with the tool)
        let tool_name_for_spawn = tool_name.clone();
        let reconnecting_peer = mcp_spawner
            .spawn(move |manager, _ctx| {
                if let Some(installation_id) = server_id {
                    manager.server_with_installation_id_and_tool_name(installation_id, tool_name_for_spawn.clone())
                } else {
                    manager.server_with_tool_name(tool_name_for_spawn.clone())
                }
            })
            .await
            .map_err(|_| LocalAgentError::McpTool {
                tool_name: mcp.name.clone(),
                detail: "MCP manager dropped".to_string(),
            })?
            .ok_or_else(|| LocalAgentError::McpTool {
                tool_name: mcp.name.clone(),
                detail: "MCP server for tool not found".to_string(),
            })?;

        let request = rmcp::model::CallToolRequestParams::new(mcp.name.clone())
            .with_arguments(arguments);

        let result = tokio::time::timeout(
            Duration::from_secs(MCP_TIMEOUT_SECS),
            reconnecting_peer.call_tool(request),
        )
        .await
        .map_err(|_| LocalAgentError::McpTool {
            tool_name: mcp.name.clone(),
            detail: "MCP tool call timed out".to_string(),
        })?
        .map_err(|e| LocalAgentError::McpTool {
            tool_name: mcp.name.clone(),
            detail: format!("MCP call_tool error: {e}"),
        })?;

        let mut text_parts = Vec::new();
        let is_error = result.is_error.unwrap_or(false);
        for content in &result.content {
            match &content.raw {
                rmcp::model::RawContent::Text(t) => text_parts.push(t.text.clone()),
                rmcp::model::RawContent::Image(_) => {
                    text_parts.push("[image content]".to_string());
                }
                rmcp::model::RawContent::Resource(r) => {
                    match &r.resource {
                        rmcp::model::ResourceContents::TextResourceContents { uri, .. } => {
                            text_parts.push(format!("[resource: {}]", uri));
                        }
                        rmcp::model::ResourceContents::BlobResourceContents { uri, .. } => {
                            text_parts.push(format!("[binary resource: {}]", uri));
                        }
                    }
                }
                _ => {}
            }
        }
        let output = if is_error {
            format!("MCP tool error: {}", text_parts.join("\n"))
        } else {
            text_parts.join("\n")
        };

        Ok(output)
    }

    // -- MCP resource read ---------------------------------------------------

    async fn read_mcp_resource(
        &self,
        read: &api::message::tool_call::ReadMcpResource,
    ) -> Result<String, LocalAgentError> {
        let Some(mcp_spawner) = self.mcp_spawner.as_ref() else {
            return Err(LocalAgentError::McpResource {
                uri: read.uri.clone(),
                detail: "MCP not available (no spawner configured)".to_string(),
            });
        };

        // Find the resource by URI or by name (using server_id field as name fallback)
        let uri_or_name = if read.uri.is_empty() {
            read.server_id.clone()
        } else {
            read.uri.clone()
        };

        let resource = mcp_spawner
            .spawn(move |manager, _ctx| {
                manager.resources().find(|r| {
                    r.raw.uri == uri_or_name || r.raw.name == uri_or_name
                }).cloned()
            })
            .await
            .map_err(|_| LocalAgentError::McpResource {
                uri: read.uri.clone(),
                detail: "MCP manager dropped".to_string(),
            })?;

        let Some(resource) = resource else {
            return Err(LocalAgentError::McpResource {
                uri: read.uri.clone(),
                detail: "MCP resource not found".to_string(),
            });
        };

        let uri = resource.raw.uri.clone();

        let reconnecting_peer = mcp_spawner
            .spawn(move |manager, _ctx| manager.server_with_resource(&resource))
            .await
            .map_err(|_| LocalAgentError::McpResource {
                uri: uri.clone(),
                detail: "MCP manager dropped".to_string(),
            })?
            .ok_or_else(|| LocalAgentError::McpResource {
                uri: uri.clone(),
                detail: "MCP server for resource not found".to_string(),
            })?;

        let request = rmcp::model::ReadResourceRequestParams::new(uri.clone());

        let result = tokio::time::timeout(
            Duration::from_secs(MCP_TIMEOUT_SECS),
            reconnecting_peer.read_resource(request),
        )
        .await
        .map_err(|_| LocalAgentError::McpResource {
            uri: uri.clone(),
            detail: "MCP resource read timed out".to_string(),
        })?
        .map_err(|e| LocalAgentError::McpResource {
            uri: uri.clone(),
            detail: format!("MCP read_resource error: {e}"),
        })?;

        let mut text_parts = Vec::new();
        for content in &result.contents {
            match content {
                rmcp::model::ResourceContents::TextResourceContents { text, mime_type, .. } => {
                    if let Some(mt) = mime_type.as_deref() {
                        text_parts.push(format!("[MIME: {mt}]\n{text}"));
                    } else {
                        text_parts.push(text.clone());
                    }
                }
                rmcp::model::ResourceContents::BlobResourceContents { mime_type, .. } => {
                    text_parts.push(format!("[binary resource, MIME: {}]", mime_type.as_deref().unwrap_or_default()));
                }
            }
        }

        Ok(text_parts.join("\n"))
    }

    // -- File diff application -----------------------------------------------

    /// Apply structured file diffs (search/replace pairs) from the LLM.
    async fn apply_file_diffs(
        &self,
        diffs: &[api::message::tool_call::apply_file_diffs::FileDiff],
    ) -> Result<String, LocalAgentError> {
        let mut results = Vec::new();

        for diff in diffs {
            let resolved = self.resolve_path(Path::new(&diff.file_path));

            // Ensure parent directories exist.
            if let Some(parent) = resolved.parent() {
                if !parent.exists() {
                    tokio::fs::create_dir_all(parent).await.map_err(|e| {
                        LocalAgentError::FileIo {
                            path: parent.to_path_buf(),
                            source: e,
                        }
                    })?;
                }
            }

            // Read the current file content (or start empty for new files).
            let current = if resolved.exists() {
                tokio::fs::read_to_string(&resolved).await.map_err(|e| {
                    LocalAgentError::FileIo {
                        path: resolved.clone(),
                        source: e,
                    }
                })?
            } else {
                String::new()
            };

            // Apply the search/replace: find the search string and replace it.
            if diff.search.is_empty() && !current.is_empty() {
                // Empty search means "replace entire file content" or append.
                results.push(format!(
                    "Applied diff for {} (empty search, skipped for non-empty file)",
                    diff.file_path
                ));
                continue;
            }

            if let Some(pos) = current.find(&diff.search) {
                let new_content = format!(
                    "{}{}{}",
                    &current[..pos],
                    diff.replace,
                    &current[pos + diff.search.len()..]
                );
                tokio::fs::write(&resolved, &new_content).await.map_err(|e| {
                    LocalAgentError::FileIo {
                        path: resolved.clone(),
                        source: e,
                    }
                })?;
                results.push(format!("Applied diff for {}", diff.file_path));
            } else if diff.search.is_empty() {
                // New file: write the replace content.
                tokio::fs::write(&resolved, &diff.replace).await.map_err(|e| {
                    LocalAgentError::FileIo {
                        path: resolved.clone(),
                        source: e,
                    }
                })?;
                results.push(format!("Created new file {}", diff.file_path));
            } else {
                results.push(format!(
                    "Failed to apply diff for {}: search string not found",
                    diff.file_path
                ));
            }
        }

        if results.is_empty() {
            results.push("No diffs to apply".to_string());
        }
        Ok(results.join("\n"))
    }

    // -- Sub-agent spawning --------------------------------------------------

    async fn spawn_subagent(&self, sub: &api::message::tool_call::Subagent) -> Result<String, LocalAgentError> {
        let payload = sub.payload.clone();

        // Build context summary from the parent task store to share with the child.
        let parent_context_summary = build_parent_context_summary(
            &self.child_spawner.task_store(),
            &self.parent_task_id,
        );

        // Prepend parent context summary to the child's prompt so it has
        // awareness of what the parent has already done.
        let enriched_prompt = if parent_context_summary.is_empty() {
            payload
        } else {
            format!(
                "[Parent agent context summary]\n{parent_context_summary}\n\n\
                 [Your task]\n{payload}"
            )
        };

        let config = super::child_agent::ChildAgentConfig {
            prompt: enriched_prompt,
            model_id: self.model_id.clone(),
            working_dir: self.working_dir.clone(),
            max_context_tokens: self.max_context_tokens / 2,
            parent_task_id: self.parent_task_id.clone(),
            conversation_id: self.conversation_id.clone(),
            child_task_id: sub.task_id.clone(),
        };
        let (child_task_id, handle) = self.child_spawner.spawn(&config)
            .map_err(|e| LocalAgentError::SubAgent(e.to_string()))?;
        let result = handle.await
            .map_err(|e| LocalAgentError::SubAgent(format!("Child agent join error: {e}")))?
            .map_err(|e| LocalAgentError::SubAgent(e.to_string()))?;

        // Persist the child result into the parent task store so the parent
        // LLM sees it in the next turn.
        let _ = self.child_spawner.task_store().append_tool_message(
            &self.parent_task_id,
            None,
            "subagent",
            &child_task_id,
            &result,
            &result,
        );

        Ok(result)
    }

    // -- Helpers -------------------------------------------------------------

    /// Resolve a path relative to the working directory.
    fn resolve_path(&self, path: &Path) -> PathBuf {
        if path.is_absolute() {
            path.to_path_buf()
        } else {
            self.working_dir.join(path)
        }
    }
}

// ---------------------------------------------------------------------------
// Helper functions
// ---------------------------------------------------------------------------

/// Build a concise summary of the parent agent's conversation so far,
/// to be included in the child agent's prompt for context sharing.
fn build_parent_context_summary(
    task_store: &Arc<super::task_store::LocalAgentTaskStore>,
    parent_task_id: &str,
) -> String {
    let Ok(messages) = task_store.get_messages(parent_task_id) else {
        return String::new();
    };

    // Only include the most recent messages to keep the summary compact.
    let max_messages = 20;
    let start = messages.len().saturating_sub(max_messages);
    let relevant = &messages[start..];

    let mut parts = Vec::new();
    for sm in relevant {
        let text = match sm.role.as_str() {
            "user" | "system" => {
                if let Some(content) = &sm.content {
                    format!("[User] {}", truncate_str(content, 300))
                } else {
                    String::new()
                }
            }
            "assistant" => {
                if let Some(content) = &sm.content {
                    format!("[Assistant] {}", truncate_str(content, 300))
                } else {
                    String::new()
                }
            }
            "tool" => {
                if sm.tool_input.is_some() {
                    // This is a tool CALL
                    let name = sm.tool_name.as_deref().unwrap_or("unknown");
                    let input = sm.tool_input.as_deref().unwrap_or("");
                    format!("[Tool Call] {name}: {}", truncate_str(input, 200))
                } else {
                    // This is a tool RESULT
                    let output = sm.tool_output.as_deref().unwrap_or("");
                    format!("[Tool Result] {}", truncate_str(output, 300))
                }
            }
            _ => String::new(),
        };

        if !text.is_empty() {
            parts.push(text);
        }
    }

    if parts.is_empty() {
        String::new()
    } else {
        parts.join("\n")
    }
}

/// Truncate a string to a character limit with ellipsis.
fn truncate_str(s: &str, limit: usize) -> String {
    if s.len() <= limit {
        s.to_string()
    } else {
        let truncated: String = s.chars().take(limit).collect();
        format!("{truncated}...")
    }
}

/// Truncate a string to `max_len` bytes, appending an ellipsis if truncated.
fn truncate_string(s: &mut String, max_len: usize) {
    if s.len() > max_len {
        s.truncate(max_len);
        s.push_str("\n...[output truncated]");
    }
}

/// Simple glob matching: supports `*` and `**` patterns.
fn glob_match(pattern: &str, path: &str) -> bool {
    let pattern_parts: Vec<&str> = pattern.split("**").collect();
    if pattern_parts.len() == 1 {
        // No `**` -- use simple matching
        return simple_glob_match(pattern, path);
    }
    // With `**`, check that each part of the pattern matches in order
    let mut path_remaining = path;
    for (i, part) in pattern_parts.iter().enumerate() {
        if part.is_empty() {
            continue;
        }
        if let Some(pos) = path_remaining.find(part) {
            path_remaining = &path_remaining[pos + part.len()..];
        } else if i == pattern_parts.len() - 1 && !part.is_empty() {
            return path_remaining.ends_with(part);
        } else {
            return false;
        }
    }
    true
}

/// Simple glob matching with `*` as any segment and `?` as single char.
fn simple_glob_match(pattern: &str, path: &str) -> bool {
    let pattern: Vec<&str> = pattern.split('*').collect();
    let mut path_remaining = path;
    for (i, part) in pattern.iter().enumerate() {
        if part.is_empty() {
            continue;
        }
        if i == 0 {
            if !path_remaining.starts_with(part) {
                return false;
            }
            path_remaining = &path_remaining[part.len()..];
        } else if i == pattern.len() - 1 {
            if !path_remaining.ends_with(part) {
                return false;
            }
        } else if let Some(pos) = path_remaining.find(part) {
            path_remaining = &path_remaining[pos + part.len()..];
        } else {
            return false;
        }
    }
    true
}

/// Build a successful `ToolCallResult` protobuf message from a tool output string.
fn build_tool_call_result(tc: &api::message::ToolCall, output: &str) -> api::message::ToolCallResult {
    // tool_call_id is a plain String in proto
    api::message::ToolCallResult {
        tool_call_id: tc.tool_call_id.clone(),
        result: match tc.tool.as_ref() {
            Some(api::message::tool_call::Tool::RunShellCommand(_)) => {
                Some(api::message::tool_call_result::Result::RunShellCommand(
                    api::RunShellCommandResult {
                        result: Some(api::run_shell_command_result::Result::CommandFinished(
                            api::ShellCommandFinished {
                                output: output.to_string(),
                                exit_code: 0,
                                command_id: String::new(),
                                start_ts: None,
                                finish_ts: None,
                            },
                        )),
                        ..Default::default()
                    },
                ))
            }
            Some(api::message::tool_call::Tool::CallMcpTool(_)) => {
                Some(api::message::tool_call_result::Result::CallMcpTool(
                    api::CallMcpToolResult {
                        result: Some(api::call_mcp_tool_result::Result::Success(
                            api::call_mcp_tool_result::Success {
                                results: vec![api::call_mcp_tool_result::success::Result {
                                    result: Some(api::call_mcp_tool_result::success::result::Result::Text(
                                        api::call_mcp_tool_result::success::result::Text {
                                            text: output.to_string(),
                                        },
                                    )),
                                }],
                            },
                        )),
                    },
                ))
            }
            Some(api::message::tool_call::Tool::Subagent(_)) => {
                Some(api::message::tool_call_result::Result::Subagent(
                    api::message::tool_call_result::SubagentResult {
                        payload: output.to_string(),
                    },
                ))
            }
            _ => Some(api::message::tool_call_result::Result::ReadShellCommandOutput(
                api::ReadShellCommandOutputResult {
                    command: String::new(),
                    result: Some(api::read_shell_command_output_result::Result::CommandFinished(
                        api::ShellCommandFinished {
                            output: output.to_string(),
                            exit_code: 0,
                            command_id: String::new(),
                            start_ts: None,
                            finish_ts: None,
                        },
                    )),
                },
            )),
        },
        ..Default::default()
    }
}

pub fn build_tool_call_error(tc: &api::message::ToolCall, error: &LocalAgentError) -> api::message::ToolCallResult {
    api::message::ToolCallResult {
        tool_call_id: tc.tool_call_id.clone(),
        result: Some(api::message::tool_call_result::Result::RunShellCommand(
            api::RunShellCommandResult {
                result: Some(api::run_shell_command_result::Result::CommandFinished(
                    api::ShellCommandFinished {
                        output: format!("Error: {error}"),
                        exit_code: 1,
                        command_id: String::new(),
                        start_ts: None,
                        finish_ts: None,
                    },
                )),
                ..Default::default()
            },
        )),
        ..Default::default()
    }
}

// ---------------------------------------------------------------------------
// MCP integer arg coercion (copied from cloud executor for local use)
// ---------------------------------------------------------------------------

/// Coerces whole-number float values to integers where the tool's input
/// schema declares `"type": "integer"`. Protobuf `Struct` serializes all
/// numbers as f64, producing e.g. `"5.0"` which strict MCP servers reject.
fn coerce_integer_args(
    args: &mut serde_json::Map<String, serde_json::Value>,
    input_schema: &serde_json::Map<String, serde_json::Value>,
) {
    let mut wrapped = serde_json::Value::Object(std::mem::take(args));
    let schema_value = serde_json::Value::Object(input_schema.clone());
    coerce_value_against_schema(&mut wrapped, &schema_value);
    if let serde_json::Value::Object(restored) = wrapped {
        *args = restored;
    }
}

fn schema_declares_integer(schema: &serde_json::Value) -> bool {
    match schema.get("type") {
        Some(serde_json::Value::String(s)) => s == "integer",
        Some(serde_json::Value::Array(types)) => {
            types.iter().any(|t| t.as_str() == Some("integer"))
        }
        _ => false,
    }
}

fn coerce_number_to_int(n: &mut serde_json::Number) {
    let Some(f) = n.as_f64() else { return };
    if n.is_i64() || n.is_u64() {
        return;
    }
    if f.fract() != 0.0 {
        return;
    }
    if let Ok(i) = i64::try_from(f as i128) {
        *n = serde_json::Number::from(i);
    }
}

fn coerce_value_against_schema(value: &mut serde_json::Value, schema: &serde_json::Value) {
    if schema_declares_integer(schema) {
        if let serde_json::Value::Number(n) = value {
            coerce_number_to_int(n);
        }
    }
    for combinator in ["oneOf", "anyOf", "allOf"] {
        if let Some(branches) = schema.get(combinator).and_then(|b| b.as_array()) {
            for branch in branches {
                coerce_value_against_schema(value, branch);
            }
        }
    }
    match value {
        serde_json::Value::Object(map) => {
            let properties = schema.get("properties").and_then(|p| p.as_object());
            let additional = schema.get("additionalProperties");
            for (k, v) in map.iter_mut() {
                if let Some(prop_schema) = properties.and_then(|p| p.get(k)) {
                    coerce_value_against_schema(v, prop_schema);
                } else if let Some(extra_schema) = additional {
                    if extra_schema.is_object() {
                        coerce_value_against_schema(v, extra_schema);
                    }
                }
            }
        }
        serde_json::Value::Array(items) => {
            if let Some(item_schema) = schema.get("items") {
                match item_schema {
                    serde_json::Value::Object(_) => {
                        for elem in items.iter_mut() {
                            coerce_value_against_schema(elem, item_schema);
                        }
                    }
                    serde_json::Value::Array(schemas) => {
                        for (elem, elem_schema) in items.iter_mut().zip(schemas.iter()) {
                            coerce_value_against_schema(elem, elem_schema);
                        }
                    }
                    _ => {}
                }
            }
        }
        _ => {}
    }
}
