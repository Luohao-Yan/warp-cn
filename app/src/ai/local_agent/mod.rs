//! Local agent mode: routes agent requests to local LLM providers
//! instead of the cloud-based Warp server.

pub(crate) mod local_mode_config;
pub(crate) mod service;

pub(crate) mod errors;
pub(crate) mod runner;
pub(crate) mod tool_executor;
pub(crate) mod child_agent;
pub(crate) mod context_manager;
pub(crate) mod task_store;

#[cfg(test)]
mod tests {
    // Integration tests for local agent orchestration will go here
}

use warpui::AppContext;

/// Called during app initialization to set up local agent infrastructure.
pub fn init(_app: &mut AppContext) {
    // Future: pre-warm MCP servers, seed task store, etc.
}
