use warp_graphql::ai::{AgentTaskState, PlatformErrorCode};

use super::terminal::ShareSessionError;
use super::AgentDriverError;
use crate::ai::blocklist::local_agent_task_sync_model::classify_renderable_error;
use crate::server::server_api::ai::TaskStatusUpdate;

/// Classify an `AgentDriverError` into a task state and a `TaskStatusUpdate`
/// suitable for reporting via `update_agent_task`.
pub fn classify_driver_error(error: &AgentDriverError) -> (AgentTaskState, TaskStatusUpdate) {
    match error {
        // --- Warp-side errors (task → ERROR) ---
        AgentDriverError::TerminalUnavailable | AgentDriverError::InvalidRuntimeState => (
            AgentTaskState::Error,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "internal-error-retry"),
                PlatformErrorCode::InternalError,
            ),
        ),
        AgentDriverError::BootstrapFailed { error } => (
            AgentTaskState::Error,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "terminal-session-failed", error = error.to_string()),
                PlatformErrorCode::InternalError,
            ),
        ),
        AgentDriverError::ShareSessionFailed { error: share_err } => {
            let message = match share_err {
                ShareSessionError::Internal(_) => {
                    crate::tr!("ai", "share-session-internal-error")
                }
                ShareSessionError::Failed(reason) => {
                    crate::tr!("ai", "share-session-failed", reason = reason.as_str())
                }
                ShareSessionError::Disabled => {
                    crate::tr!("ai", "share-session-disabled")
                }
                ShareSessionError::Timeout => {
                    crate::tr!("ai", "share-session-timeout")
                }
                ShareSessionError::Interrupted => {
                    crate::tr!("ai", "share-session-interrupted")
                }
            };
            (
                AgentTaskState::Error,
                TaskStatusUpdate::with_error_code(
                    message,
                    match share_err {
                        ShareSessionError::Disabled => PlatformErrorCode::FeatureNotAvailable,
                        _ => PlatformErrorCode::InternalError,
                    },
                ),
            )
        }
        AgentDriverError::WarpDriveSyncFailed => (
            AgentTaskState::Error,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "warp-drive-sync-failed"),
                PlatformErrorCode::InternalError,
            ),
        ),
        AgentDriverError::NotLoggedIn => {
            let bin = warp_cli::binary_name().unwrap_or_else(|| "warp".to_string());
            (
                AgentTaskState::Error,
                TaskStatusUpdate::with_error_code(
                    &crate::tr!("ai", "auth-required", bin = bin.as_str()),
                    PlatformErrorCode::AuthenticationRequired,
                ),
            )
        }
        AgentDriverError::CloudProviderSetupFailed(err) => (
            AgentTaskState::Error,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "cloud-provider-setup-failed", err = err.to_string()),
                PlatformErrorCode::InternalError,
            ),
        ),

        // --- User-side errors (task → FAILED) ---
        AgentDriverError::MCPServerNotFound(uuid) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "mcp-server-not-found", uuid = uuid.to_string()),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::ManagedMcpResolutionFailed { uid, message } => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "mcp-startup-failed", uid = uid.to_string(), message = message.to_string()),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::MCPStartupFailed { details } => {
            let server_lines = details
                .iter()
                .map(|detail| format!("- {detail}"))
                .collect::<Vec<_>>()
                .join("\n");
            (
                AgentTaskState::Failed,
                TaskStatusUpdate::with_error_code(
                    format!(
                        "One or more MCP servers failed to start:\n\n{server_lines}\n\nCheck that each server's configuration is valid and that it is reachable from the agent's environment."
                    ),
                    PlatformErrorCode::EnvironmentSetupFailed,
                ),
            )
        }
        AgentDriverError::MCPJsonParseError(msg) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "mcp-json-parse-error", msg = msg.as_str()),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::MCPMissingVariables => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "mcp-missing-variables"),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::ProfileError(name) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "profile-not-found", name = name.as_str()),
                PlatformErrorCode::ResourceNotFound,
            ),
        ),
        AgentDriverError::AIWorkflowNotFound(id) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "workflow-not-found", id = id.as_str()),
                PlatformErrorCode::ResourceNotFound,
            ),
        ),
        AgentDriverError::EnvironmentNotFound(id) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "environment-not-found", id = id.as_str()),
                PlatformErrorCode::ResourceNotFound,
            ),
        ),
        AgentDriverError::EnvironmentSetupFailed(msg) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "environment-setup-failed-msg", msg = msg.as_str()),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::InvalidWorkingDirectory { path, .. } => {
            let path_str = path.display().to_string();
            (
                AgentTaskState::Failed,
                TaskStatusUpdate::with_error_code(
                    &crate::tr!("ai", "invalid-working-directory", path = path_str.as_str()),
                    PlatformErrorCode::EnvironmentSetupFailed,
                ),
            )
        }

        // --- Conversation errors ---
        // Delegate to classify_renderable_error for proper ERROR vs FAILED
        // distinction and PlatformErrorCode. This is a belt-and-suspenders
        // fallback — LocalAgentTaskSyncModel handles most conversation errors,
        // but the driver catches them too if the conversation ends with an error.
        AgentDriverError::ConversationError { error } => {
            let (state, update) = classify_renderable_error(error);
            (
                state,
                update.unwrap_or_else(|| {
                    TaskStatusUpdate::with_error_code(
                        error.to_string(),
                        PlatformErrorCode::InternalError,
                    )
                }),
            )
        }

        // --- Cancellation / Blocked (no error code) ---
        AgentDriverError::ConversationCancelled { .. } => (
            AgentTaskState::Cancelled,
            TaskStatusUpdate::message(&crate::tr!("ai", "task-cancelled-msg")),
        ),
        AgentDriverError::ConversationBlocked { blocked_action } => (
            AgentTaskState::Blocked,
            TaskStatusUpdate::message(crate::tr!("ai", "agent-blocked", blocked_action = blocked_action.as_str())),
        ),

        // --- Setup errors ---
        AgentDriverError::TeamMetadataRefreshTimeout => (
            AgentTaskState::Error,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "team-metadata-timeout"),
                PlatformErrorCode::InternalError,
            ),
        ),
        AgentDriverError::SkillResolutionFailed(msg) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "skill-resolution-failed", msg = msg.as_str()),
                PlatformErrorCode::ResourceNotFound,
            ),
        ),
        AgentDriverError::ConfigBuildFailed(err) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "config-build-failed", err = err.to_string()),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::PromptResolutionFailed(err) => (
            AgentTaskState::Error,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "prompt-resolution-failed", err = err.to_string()),
                PlatformErrorCode::InternalError,
            ),
        ),
        AgentDriverError::SecretsFetchFailed(err) => (
            AgentTaskState::Error,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "secrets-fetch-failed", err = err.to_string()),
                PlatformErrorCode::InternalError,
            ),
        ),
        AgentDriverError::AwsBedrockCredentialsFailed(msg) => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "aws-bedrock-credentials-failed", msg = msg.as_str()),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::ConversationLoadFailed(msg) => (
            AgentTaskState::Error,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "conversation-load-failed", msg = msg.as_str()),
                PlatformErrorCode::InternalError,
            ),
        ),
        AgentDriverError::ConversationHarnessMismatch {
            conversation_id,
            expected,
            got,
        } => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "conversation-harness-mismatch",
                    conversation_id = conversation_id.as_str(),
                    expected = expected.as_str(),
                    got = got.as_str(),
                ),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::TaskHarnessMismatch {
            task_id,
            expected,
            got,
        } => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "task-harness-mismatch",
                    task_id = task_id.as_str(),
                    expected = expected.as_str(),
                    got = got.as_str(),
                ),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::ConversationResumeStateMissing {
            harness,
            conversation_id,
        } => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "conversation-resume-state-missing",
                    conversation_id = conversation_id.as_str(),
                    harness = harness.as_str(),
                ),
                PlatformErrorCode::ResourceNotFound,
            ),
        ),
        AgentDriverError::HarnessCommandFailed { exit_code } => {
            let exit_code_str = exit_code.to_string();
            (
                AgentTaskState::Failed,
                TaskStatusUpdate::with_error_code(
                    &crate::tr!("ai", "harness-command-failed", exit_code = exit_code_str.as_str()),
                    PlatformErrorCode::InternalError,
                ),
            )
        }
        AgentDriverError::HarnessSetupFailed { harness, reason } => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "harness-setup-failed",
                    harness = harness.as_str(),
                    reason = reason.as_str(),
                ),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::HarnessConfigSetupFailed { harness, error } => (
            AgentTaskState::Failed,
            TaskStatusUpdate::with_error_code(
                &crate::tr!("ai", "harness-config-setup-failed",
                    harness = harness.as_str(),
                    error = error.to_string(),
                ),
                PlatformErrorCode::EnvironmentSetupFailed,
            ),
        ),
        AgentDriverError::HarnessAuthCheckFailed { harness, detail } => {
            let message = format!(
                "Harness '{harness}' authentication check failed: login credentials \
                 are invalid or expired. Verify that the authentication secret \
                 configured for this harness is correct."
            );
            log::error!("Preflight detail for {harness}: {detail}");
            (
                AgentTaskState::Failed,
                TaskStatusUpdate::with_error_code(
                    message,
                    PlatformErrorCode::AuthenticationRequired,
                ),
            )
        }
        AgentDriverError::HarnessRuntimeFailureDetected {
            harness,
            pattern,
            excerpt,
        } => {
            let message = format!(
                "Harness '{harness}' could not make a successful API request. \
                 Matched failure pattern '{pattern}' in harness output: \"{excerpt}\". \
                 This usually means the API key is invalid, out of credits, or the \
                 account is misconfigured."
            );
            log::error!("Runtime failure for {harness}: pattern={pattern}, excerpt={excerpt}");
            (
                AgentTaskState::Failed,
                TaskStatusUpdate::with_error_code(
                    message,
                    PlatformErrorCode::AuthenticationRequired,
                ),
            )
        }
    }
}

#[cfg(test)]
#[path = "error_classification_tests.rs"]
mod tests;
