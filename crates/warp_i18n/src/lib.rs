//! Warp i18n — enterprise-grade internationalization for the Warp terminal.
//!
//! Uses the [Fluent](https://projectfluent.org/) localization system for:
//! - Domain-based file organization (one `.ftl` file per domain)
//! - Language-aware plural rules (`{ $count -> [one] ... *[other] ... }`)
//! - Safe variable interpolation
//! - Locale fallback chain
//!
//! # Usage
//!
//! ```ignore
//! // 1. Initialize at app startup
//! i18n::init(i18n::I18nBundle::from_dir("resources/i18n", &locale)?);
//!
//! // 2. Use the tr! macro wherever user-facing text appears
//! Text::new_inline(tr!("common", "cancel-label"), family_id, 14.)
//!     .with_color(theme.ansi_fg_red())
//! ```
//!
//! # FTL file convention
//!
//! Each domain gets its own `.ftl` file under `resources/i18n/{locale}/`.
//! Message IDs are namespaced: `{domain}-{message-id}` (hyphen-separated because FTL only allows `[a-zA-Z0-9_-]`).
//!
//! ```ftl
//! ## resources/i18n/en-US/common.ftl
//! common-cancel-label = Cancel
//! common-save-label = Save
//! common-search-placeholder = Search
//! ```

mod bundle;
mod locale;

#[doc(inline)]
pub use bundle::{I18nBundle, I18nBundleBuilder};
pub use fluent_bundle::{FluentArgs, FluentValue};
pub use locale::LocaleConfig;
pub use unic_langid::LanguageIdentifier;

use std::sync::{OnceLock, RwLock};

// ---------------------------------------------------------------------------
// Global bundle (one per process, initialized once at startup)
// ---------------------------------------------------------------------------

static GLOBAL_BUNDLE: OnceLock<RwLock<I18nBundle>> = OnceLock::new();

/// Initialize the global i18n bundle. Must be called once at application startup
/// before any `tr!()` invocations.
pub fn init(bundle: I18nBundle) {
    GLOBAL_BUNDLE
        .set(RwLock::new(bundle))
        .unwrap_or_else(|_| panic!("warp_i18n::init() called more than once"));
}

/// Update the global bundle at runtime (e.g. when the user changes their language
/// preference in Settings).
pub fn set_bundle(bundle: I18nBundle) {
    if let Some(guard) = GLOBAL_BUNDLE.get() {
        *guard.write().unwrap() = bundle;
    } else {
        init(bundle);
    }
}

// ---------------------------------------------------------------------------
// Core resolution
// ---------------------------------------------------------------------------

/// Look up and format a fluent message by its domain-qualified ID.
///
/// The key used for lookup is `"{domain}-{id}"`, matching the namespaced message
/// IDs in `.ftl` files.
///
/// Resolution order:
/// 1. Primary locale (e.g. `zh-CN`)
/// 2. Fallback locale (`en-US`)
/// 3. Raw `"{domain}-{id}"` string as last resort
pub fn resolve(domain: &str, id: &str, args: Option<&FluentArgs>) -> String {
    match GLOBAL_BUNDLE.get() {
        Some(lock) => {
            if let Ok(bundle) = lock.read() {
                return bundle.format(domain, id, args);
            }
            // Lock poisoned – fall through to raw key
            format!("{domain}-{id}")
        }
        None => format!("{domain}-{id}"),
    }
}

// ---------------------------------------------------------------------------
// Convenience trait for converting values to FluentValue
// ---------------------------------------------------------------------------

/// Trait for converting common Rust types into `FluentValue<'static>`.
///
/// Implemented for `&str`, `String`, and `i64` by default.
pub trait ToFluentValue {
    fn to_fluent_value(self) -> FluentValue<'static>;
}

impl ToFluentValue for &str {
    fn to_fluent_value(self) -> FluentValue<'static> {
        FluentValue::from(self.to_owned())
    }
}

impl ToFluentValue for String {
    fn to_fluent_value(self) -> FluentValue<'static> {
        FluentValue::from(self)
    }
}

impl ToFluentValue for i64 {
    fn to_fluent_value(self) -> FluentValue<'static> {
        FluentValue::from(self)
    }
}

impl ToFluentValue for usize {
    fn to_fluent_value(self) -> FluentValue<'static> {
        FluentValue::from(self as i64)
    }
}

impl ToFluentValue for i32 {
    fn to_fluent_value(self) -> FluentValue<'static> {
        FluentValue::from(self as i64)
    }
}

impl ToFluentValue for u64 {
    fn to_fluent_value(self) -> FluentValue<'static> {
        FluentValue::from(self as i64)
    }
}

impl ToFluentValue for u32 {
    fn to_fluent_value(self) -> FluentValue<'static> {
        FluentValue::from(self as i64)
    }
}

impl ToFluentValue for &String {
    fn to_fluent_value(self) -> FluentValue<'static> {
        FluentValue::from(self.as_str().to_owned())
    }
}

// ---------------------------------------------------------------------------
// tr! — the primary i18n macro
// ---------------------------------------------------------------------------

/// Translate a message.
///
/// Two-argument form (no interpolation):
///
/// ```ignore
/// tr!("common", "cancel-label")
/// ```
///
/// Three+-argument form (with interpolation):
///
/// ```ignore
/// tr!("workspace", "session-count", count = sessions.len())
/// tr!("terminal", "welcome-back", name = username.as_str())
/// ```
///
/// The domain argument selects the `.ftl` file (used for organisation only –
/// at runtime all domains are merged into one bundle per locale).
#[macro_export]
macro_rules! tr {
    // No args: simple lookup
    ($domain:expr, $id:expr) => {
        $crate::resolve($domain, $id, None)
    };

    // With args: variable interpolation via FluentArgs
    ($domain:expr, $id:expr, $($key:ident = $val:expr),+ $(,)?) => {{
        let mut args = $crate::FluentArgs::new();
        $(
            args.set(
                stringify!($key),
                $crate::ToFluentValue::to_fluent_value($val),
            );
        )+
        $crate::resolve($domain, $id, Some(&args))
    }};
}
