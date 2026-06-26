use std::fs;

use super::CodexPluginManager;
use crate::features::FeatureFlag;
use crate::terminal::cli_agent_sessions::plugin_manager::CliAgentPluginManager;

#[test]
fn can_auto_install_is_false() {
    assert!(!CodexPluginManager::new(None, None, None).can_auto_install());
}

#[test]
fn does_not_support_update() {
    assert!(!CodexPluginManager::new(None, None, None).supports_update());
}

#[test]
fn minimum_version_is_zero() {
    assert_eq!(
        CodexPluginManager::new(None, None, None).minimum_plugin_version(),
        "0.0.0"
    );
}
