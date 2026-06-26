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

use std::sync::atomic::{AtomicU64, Ordering};
use std::sync::{OnceLock, RwLock};

use parking_lot::{RwLock as PlRwLock, lock_api::RawRwLock as PlRawRwLock};

// ---------------------------------------------------------------------------
// Global bundle (one per process, initialized once at startup)
// ---------------------------------------------------------------------------

static GLOBAL_BUNDLE: OnceLock<RwLock<I18nBundle>> = OnceLock::new();

/// Generation counter — bumped by `set_bundle()` so that `I18nString` caches
/// know their cached value is stale.
static GENERATION: AtomicU64 = AtomicU64::new(0);

/// Initialize the global i18n bundle. Must be called once at application startup
/// before any `tr!()` invocations.
pub fn init(bundle: I18nBundle) {
    GLOBAL_BUNDLE
        .set(RwLock::new(bundle))
        .unwrap_or_else(|_| panic!("warp_i18n::init() called more than once"));
}

/// Update the global bundle at runtime (e.g. when the user changes their language
/// preference in Settings) and bump the generation counter so that all
/// `I18nString` caches re-resolve on next access.
pub fn set_bundle(bundle: I18nBundle) {
    if let Some(guard) = GLOBAL_BUNDLE.get() {
        *guard.write().unwrap() = bundle;
    } else {
        init(bundle);
    }
    GENERATION.fetch_add(1, Ordering::Release);
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
// I18nString — language-switch–aware cached translation
// ---------------------------------------------------------------------------

/// A cached translation that automatically re-resolves when the language changes.
///
/// Use the `static_tr!` macro to create instances. Unlike `LazyLock<String>`,
/// `I18nString` detects language switches (via a global generation counter) and
/// re-resolves the translation on next access, ensuring the UI always reflects
/// the current language.
///
/// # Performance
///
/// The fast path (no language change since last resolve) is a single relaxed
/// atomic load + a `parking_lot::RwLock` read — negligible cost compared to
/// the UI render itself. Re-resolution only happens once after each
/// `set_bundle()` call.
pub struct I18nString {
    domain: &'static str,
    id: &'static str,
    cache: PlRwLock<(u64, &'static str)>,
}

impl I18nString {
    /// Create a new `I18nString`. Prefer the `static_tr!` macro.
    pub const fn new(domain: &'static str, id: &'static str) -> Self {
        Self {
            domain,
            id,
            cache: PlRwLock::const_new(PlRawRwLock::INIT, (0, "")),
        }
    }

    /// Return the current translated string as `&'static str`.
    ///
    /// This is the primary accessor. It re-resolves only when the global
    /// generation has advanced (i.e. after `set_bundle()`). The resolved
    /// string is leaked into `'static` lifetime and cached — each static
    /// leaks at most one String per language change, which is negligible
    /// for a desktop terminal with ~1000 strings and rare language switches.
    pub fn get(&self) -> &'static str {
        let gen = GENERATION.load(Ordering::Acquire);
        let read = self.cache.read();
        if read.0 == gen && !read.1.is_empty() {
            return read.1;
        }
        drop(read);
        let resolved = resolve(self.domain, self.id, None).leak();
        let mut write = self.cache.write();
        *write = (gen, resolved);
        resolved
    }
}

impl std::fmt::Display for I18nString {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&self.get())
    }
}

impl From<I18nString> for String {
    fn from(s: I18nString) -> String {
        s.get().to_owned()
    }
}

impl From<&I18nString> for String {
    fn from(s: &I18nString) -> String {
        s.get().to_owned()
    }
}

impl From<I18nString> for std::borrow::Cow<'static, str> {
    fn from(s: I18nString) -> std::borrow::Cow<'static, str> {
        std::borrow::Cow::Borrowed(s.get())
    }
}

impl From<&I18nString> for std::borrow::Cow<'static, str> {
    fn from(s: &I18nString) -> std::borrow::Cow<'static, str> {
        std::borrow::Cow::Borrowed(s.get())
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
// tr! — the primary i18n macro (for inline use)
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
///
/// For static translations that survive language switches, use `static_tr!`
/// instead of `LazyLock<String>`.
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

// ---------------------------------------------------------------------------
// static_tr! — create a language-switch–aware static translation
// ---------------------------------------------------------------------------

/// Declare a static `I18nString` that automatically re-resolves on language change.
///
/// # Why not `LazyLock<String>`?
///
/// `static FOO: LazyLock<String> = LazyLock::new(|| tr!("domain", "key"));`
/// evaluates `tr!()` **once** and caches the result forever. If the user switches
/// language, the cached value becomes stale and the UI shows the wrong language.
///
/// `static_tr!` creates an `I18nString` instead, which checks a generation counter
/// on each access and re-resolves after `set_bundle()` is called.
///
/// # Usage
///
/// ```ignore
/// // Declaration (replaces `static FOO: LazyLock<String> = LazyLock::new(|| tr!("domain", "key"));`)
/// static_tr!(FOO, "domain", "key");
/// static_tr!(pub BAR, "domain", "key");
///
/// // Access
/// Text::new(FOO.get(), family_id, 14.)
/// ActionButton::new(BAR.get(), theme)
/// ```
#[macro_export]
macro_rules! static_tr {
    // With visibility modifier
    ($vis:vis $name:ident, $domain:expr, $id:expr) => {
        $vis static $name: $crate::I18nString = $crate::I18nString::new($domain, $id);
    };

    // Without visibility modifier (private)
    ($name:ident, $domain:expr, $id:expr) => {
        static $name: $crate::I18nString = $crate::I18nString::new($domain, $id);
    };
}
