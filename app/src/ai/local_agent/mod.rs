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
pub(crate) mod pty_executor;

#[cfg(target_os = "windows")]
pub(crate) mod headless_pty;

#[cfg(test)]
mod tests {
    // Integration tests for local agent orchestration will go here
}

use warpui::SingletonEntity;
use crate::settings::AISettings;

/// Called during app initialization to set up local agent infrastructure.
pub fn init(ctx: &mut warpui::AppContext) {
    // Register the LocalModeConfig singleton model before anything uses it
    ctx.add_model(|_| local_mode_config::LocalModeConfig::new());

    // Sync LOCAL_MODE_ENABLED from persisted settings on startup
    let enabled = *AISettings::as_ref(ctx).local_mode_enabled;
    local_mode_config::set_local_mode_enabled(enabled);

    // Keep global AtomicBool in sync when setting changes
    let settings_handle = AISettings::handle(ctx);
    ctx.subscribe_to_model(&settings_handle, |_, event, ctx| {
        if let crate::settings::AISettingsChangedEvent::LocalModeEnabled { .. } = event {
            let enabled = *AISettings::as_ref(ctx).local_mode_enabled;
            local_mode_config::set_local_mode_enabled(enabled);
        }
    });

    // Sync ProviderRegistry when API keys change
    let api_key_handle = ai::api_keys::ApiKeyManager::handle(ctx);
    ctx.subscribe_to_model(&api_key_handle, |_, event, ctx| {
        if matches!(event, ai::api_keys::ApiKeyManagerEvent::KeysUpdated) {
            sync_providers_from_api_keys(ctx);
        }
    });

    // Initial provider sync
    sync_providers_from_api_keys(ctx);
}

pub(crate) fn sync_providers_from_api_keys(ctx: &mut warpui::AppContext) {
    let endpoints = ai::api_keys::ApiKeyManager::as_ref(ctx).keys().custom_endpoints.clone();
    let mut registry = ai::local_provider::ProviderRegistry::with_builtins();

    for ep in &endpoints {
        let fmt = match ep.api_format {
            ai::api_keys::ApiFormat::OpenAi => ai::local_provider::ApiFormat::OpenAI,
            ai::api_keys::ApiFormat::Anthropic => ai::local_provider::ApiFormat::Anthropic,
        };
        let api_key_opt = if ep.api_key.trim().is_empty() {
            None
        } else {
            Some(ep.api_key.as_str())
        };
        for model in &ep.models {
            registry.register_custom(
                &ep.name,
                &ep.name,
                fmt,
                &ep.url,
                api_key_opt,
                &model.name,
            );
        }
    }

    local_mode_config::LocalModeConfig::handle(ctx).update(ctx, |config: &mut local_mode_config::LocalModeConfig, ctx| {
        config.replace_registry(registry, ctx);
    });
}
