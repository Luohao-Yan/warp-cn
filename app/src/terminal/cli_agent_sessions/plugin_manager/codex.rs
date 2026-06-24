use std::path::PathBuf;
use std::sync::LazyLock;

use async_trait::async_trait;

use super::{CliAgentPluginManager, PluginInstructionStep, PluginInstructions};
use crate::terminal::shell::ShellType;

pub(super) struct CodexPluginManager;

impl CodexPluginManager {
    pub(super) fn new(
        _shell_path: Option<PathBuf>,
        _shell_type: Option<ShellType>,
        _path_env_var: Option<String>,
    ) -> Self {
        Self
    }
}

#[async_trait]
impl CliAgentPluginManager for CodexPluginManager {
    fn minimum_plugin_version(&self) -> &'static str {
        "0.0.0"
    }

    fn can_auto_install(&self) -> bool {
        false
    }

    fn supports_update(&self) -> bool {
        false
    }

    fn install_instructions(&self) -> &'static PluginInstructions {
        &INSTALL_INSTRUCTIONS
    }

    fn update_instructions(&self) -> &'static PluginInstructions {
        &EMPTY_INSTRUCTIONS
    }
}

static INSTALL_INSTRUCTIONS: LazyLock<PluginInstructions> = LazyLock::new(|| {
    PluginInstructions {
    title: crate::tr!("terminal", "plugin-install-codex-title"),
    subtitle: crate::tr!("terminal", "plugin-install-codex-subtitle"),
    steps: vec![
        PluginInstructionStep {
            description: crate::tr!("terminal", "plugin-codex-update-step"),
            command: "",
            executable: false,
            link: Some("https://developers.openai.com/codex/cli#upgrade"),
        },
        PluginInstructionStep {
            description: crate::tr!("terminal", "plugin-codex-config-step"),
            command: "[tui]\nnotification_condition = \"always\"",
            executable: false,
            link: None,
        },
    ],
    post_install_notes: vec![crate::tr!("terminal", "plugin-restart-codex")],
}
});

static EMPTY_INSTRUCTIONS: LazyLock<PluginInstructions> = LazyLock::new(|| PluginInstructions {
    title: String::new(),
    subtitle: String::new(),
    steps: vec![],
    post_install_notes: vec![],
});

#[cfg(test)]
#[path = "codex_tests.rs"]
mod tests;
