//! Singleton model that tracks whether local agent mode is active
//! and which local providers are available.

use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;

use ai::local_provider::{ChatCompletionProvider, ProviderRegistry};
use warpui::{Entity, ModelContext, SingletonEntity};

// ---------------------------------------------------------------------------
// Global flag – accessed without `ctx`
// ---------------------------------------------------------------------------

static LOCAL_MODE_ENABLED: AtomicBool = AtomicBool::new(false);

/// Read the global local-mode flag without requiring `ctx`.
pub fn is_local_mode_enabled() -> bool {
    LOCAL_MODE_ENABLED.load(Ordering::Relaxed)
}

pub(crate) fn set_local_mode_enabled(value: bool) {
    LOCAL_MODE_ENABLED.store(value, Ordering::Relaxed);
}

// ---------------------------------------------------------------------------
// Agent-no-auth flag – allows LOCAL agent features without Warp account login
// ---------------------------------------------------------------------------
// When true, the agent UI and local agent mode are available without logging in
// to a Warp account. Cloud agent (Warp server) ALWAYS requires login regardless
// of this flag, because the server fundamentally needs auth credentials.
// ---------------------------------------------------------------------------

static AGENT_NO_AUTH: AtomicBool = AtomicBool::new(true);

/// Read the global agent-no-auth flag without requiring `ctx`.
/// When `true`, local agent features are available without logging in to a Warp account.
/// Cloud agent still requires login.
pub fn is_agent_no_auth() -> bool {
    AGENT_NO_AUTH.load(Ordering::Relaxed)
}

/// Set the global agent-no-auth flag.
pub fn set_agent_no_auth(value: bool) {
    AGENT_NO_AUTH.store(value, Ordering::Relaxed);
}

// ---------------------------------------------------------------------------
// Global provider registry – accessible from static code paths
// ---------------------------------------------------------------------------

static GLOBAL_REGISTRY: std::sync::Mutex<Option<ProviderRegistry>> =
    std::sync::Mutex::new(None);

/// Sync the global registry snapshot from the current `ProviderRegistry`.
fn sync_global_registry(registry: &ProviderRegistry) {
    if let Ok(mut guard) = GLOBAL_REGISTRY.lock() {
        *guard = Some(registry.clone());
    }
}

/// Resolve a `ChatCompletionProvider` for the given model ID from the global
/// registry. Returns `None` if no matching provider is found.
pub fn resolve_global_provider(model_id: &str) -> Option<Arc<dyn ChatCompletionProvider>> {
    let guard = GLOBAL_REGISTRY.lock().ok()?;
    guard.as_ref()?.resolve_for_model(model_id)
}

// ---------------------------------------------------------------------------
// LocalModeConfig model
// ---------------------------------------------------------------------------

/// Tracks whether local agent mode is active and which local providers
/// have been registered.
///
/// When `local_mode_enabled` is `true`, agent requests whose model maps
/// to a local provider are dispatched to the local agent service rather
/// than the Warp cloud server.
pub struct LocalModeConfig {
    local_mode_enabled: bool,
    provider_registry: ProviderRegistry,
}

/// Event type – unused for now but required by the `Entity` trait.
#[derive(Clone, Debug)]
pub enum LocalModeConfigEvent {
    ModeChanged { enabled: bool },
    ProviderRegistered,
}

impl Entity for LocalModeConfig {
    type Event = LocalModeConfigEvent;
}

impl SingletonEntity for LocalModeConfig {}

impl LocalModeConfig {
    /// Construct the default config (local mode off, built-in providers registered).
    pub fn new() -> Self {
        let registry = ProviderRegistry::with_builtins();
        sync_global_registry(&registry);
        Self {
            local_mode_enabled: false,
            provider_registry: registry,
        }
    }

    // -- queries -------------------------------------------------------------

    /// Whether local agent mode is currently enabled.
    pub fn local_mode_enabled(&self) -> bool {
        self.local_mode_enabled
    }

    /// Whether at least one local provider is configured.
    pub fn has_providers(&self) -> bool {
        self.provider_registry.has_providers()
    }

    /// Borrow the provider registry.
    pub fn provider_registry(&self) -> &ProviderRegistry {
        &self.provider_registry
    }

    // -- mutations -----------------------------------------------------------

    /// Toggle local mode on or off.  Also updates the global flag so
    /// call-sites without `ctx` can query the current state.
    pub fn set_local_mode_enabled(&mut self, enabled: bool, ctx: &mut ModelContext<Self>) {
        self.local_mode_enabled = enabled;
        set_local_mode_enabled(enabled);
        ctx.emit(LocalModeConfigEvent::ModeChanged { enabled });
    }

    /// Register a local provider and sync the global registry.
    pub fn register_provider(
        &mut self,
        provider: Arc<dyn ChatCompletionProvider>,
        ctx: &mut ModelContext<Self>,
    ) {
        self.provider_registry.register(provider);
        sync_global_registry(&self.provider_registry);
        ctx.emit(LocalModeConfigEvent::ProviderRegistered);
    }

    /// Update an existing provider's API key (re-register with new key).
    pub fn update_provider(
        &mut self,
        provider: Arc<dyn ChatCompletionProvider>,
        ctx: &mut ModelContext<Self>,
    ) {
        self.provider_registry.register(provider);
        sync_global_registry(&self.provider_registry);
        ctx.emit(LocalModeConfigEvent::ProviderRegistered);
    }

    /// Replace the entire provider registry and sync the global snapshot.
    pub fn replace_registry(&mut self, registry: ProviderRegistry, ctx: &mut ModelContext<Self>) {
        self.provider_registry = registry;
        sync_global_registry(&self.provider_registry);
        ctx.emit(LocalModeConfigEvent::ProviderRegistered);
    }
}
