use std::sync::LazyLock;

use async_trait::async_trait;

use super::{CliAgentPluginManager, PluginInstructionStep, PluginInstructions};

// Keep in sync with the opencode-warp npm package version.
// This version is also hardcoded into UPDATE_INSTRUCTIONS below (so the update
// instructions tell users to pin to this specific version to force OpenCode's
// plugin cache to re-fetch). Update both together.
const MINIMUM_PLUGIN_VERSION: &str = "0.1.5";

pub(super) struct OpenCodePluginManager;

#[async_trait]
impl CliAgentPluginManager for OpenCodePluginManager {
    fn minimum_plugin_version(&self) -> &'static str {
        MINIMUM_PLUGIN_VERSION
    }

    fn can_auto_install(&self) -> bool {
        false
    }

    fn install_instructions(&self) -> &'static PluginInstructions {
        &INSTALL_INSTRUCTIONS
    }

    fn update_instructions(&self) -> &'static PluginInstructions {
        &UPDATE_INSTRUCTIONS
    }
}

static INSTALL_INSTRUCTIONS: LazyLock<PluginInstructions> = LazyLock::new(|| {
    PluginInstructions {
        title: crate::tr!("terminal", "plugin-install-opencode-title"),
        subtitle: crate::tr!("terminal", "plugin-opencode-install-subtitle"),
        steps: vec![
            PluginInstructionStep {
                description: crate::tr!("terminal", "plugin-opencode-open-config-step"),
                command: "~/.config/opencode/opencode.json",
                executable: false,
                link: None,
            },
            PluginInstructionStep {
                description: crate::tr!("terminal", "plugin-opencode-add-plugin-step"),
                command: "\"plugin\": [\"@warp-dot-dev/opencode-warp\"]",
                executable: false,
                link: None,
            },
        ],
        post_install_notes: vec![crate::tr!("terminal", "plugin-opencode-restart-activate")],
    }
});

static UPDATE_INSTRUCTIONS: LazyLock<PluginInstructions> = LazyLock::new(|| {
    PluginInstructions {
        title: crate::tr!("terminal", "plugin-update-opencode-title"),
        subtitle: crate::tr!("terminal", "plugin-opencode-update-subtitle"),
        steps: vec![
            PluginInstructionStep {
                description: crate::tr!("terminal", "plugin-opencode-open-config-step"),
                command: "~/.config/opencode/opencode.json",
                executable: false,
                link: None,
            },
            PluginInstructionStep {
                description: crate::tr!("terminal", "plugin-opencode-replace-plugin-step"),
                command: "\"plugin\": [\"@warp-dot-dev/opencode-warp@0.1.5\"]",
                executable: false,
                link: None,
            },
        ],
        post_install_notes: vec![crate::tr!("terminal", "plugin-opencode-restart-update")],
    }
});

#[cfg(test)]
#[path = "opencode_tests.rs"]
mod tests;
