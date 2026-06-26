//! i18n initialization for the Warp application.
//!
//! This module is responsible for initializing the global `warp_i18n::I18nBundle`
//! at application startup. It detects the system locale and loads the appropriate
//! `.ftl` files from `resources/i18n/`.
//!
//! # Usage
//!
//! Called once from `run()` (in `lib.rs`):
//!
//! ```ignore
//! i18n::init_i18n();
//! ```
//!
//! After initialization, any module can use the `tr!` macro:
//!
//! ```ignore
//! Text::new_inline(tr!("common", "cancel-label"), family_id, 14.)
//! ```

use warp_i18n::{I18nBundle, LanguageIdentifier};
use warpui::SingletonEntity;

use crate::terminal::general_settings::GeneralSettings;

/// Default base path for i18n resources (relative to the working directory).
///
/// In development, this resolves to the repository root's `resources/i18n/`
/// directory. In release builds, this should be pointed to the bundled
/// resources directory via `WARP_I18N_PATH` or the app bundle path.
const DEFAULT_I18N_PATH: &str = "resources/i18n";

/// Environment variable for overriding the i18n base path at runtime.
const I18N_PATH_ENV_VAR: &str = "WARP_I18N_PATH";

/// Initialize the global i18n bundle.
///
/// Detection order:
/// 1. `WARP_I18N_PATH` environment variable (for testing / CI)
/// 2. `DEFAULT_I18N_PATH` (`resources/i18n/`)
///
/// Locale detection order:
/// 1. `WARP_LANG` environment variable (force a locale)
/// 2. `LANG` environment variable (system locale)
/// 3. macOS `AppleLocale` (system locale, macOS only)
/// 4. Fallback to `en-US`
pub fn init_i18n() {
    let resolved_path = resolve_i18n_path();

    // Detect locale: support WARP_LANG override for testing.
    let locale_tag = std::env::var("WARP_LANG")
        .ok()
        .or_else(|| detect_system_locale())
        .unwrap_or_else(|| "en-US".to_owned());

    let langid: LanguageIdentifier = match locale_tag.parse() {
        Ok(id) => id,
        Err(_) => {
            log::warn!("Invalid locale tag '{locale_tag}', falling back to en-US");
            "en-US".parse().unwrap()
        }
    };

    log::info!(
        "Initializing i18n: locale={locale_tag}, path={resolved_path}"
    );

    match I18nBundle::from_dir(&resolved_path, &langid) {
        Ok(bundle) => {
            warp_i18n::init(bundle);
            log::info!("i18n initialized successfully for locale '{locale_tag}'");
        }
        Err(e) => {
            log::warn!(
                "Failed to load i18n bundle from {resolved_path}: {e:?}. \
                 Falling back to raw message IDs."
            );
            // Initialize with an empty bundle so `tr!()` doesn't panic.
            // Missing messages will return the raw key.
            warp_i18n::init(I18nBundle::empty());
        }
    }
}

/// Resolve the absolute path to the i18n resources directory.
///
/// Priority:
/// 1. `WARP_I18N_PATH` environment variable
/// 2. macOS `.app` bundle `Resources/i18n` (for bundled builds)
/// 3. `resources/i18n` relative to the current working directory (development)
fn resolve_i18n_path() -> String {
    let base_path = if let Some(path) = std::env::var(I18N_PATH_ENV_VAR).ok() {
        path
    } else if let Some(bundle_path) = bundle_resources_dir() {
        bundle_path
    } else {
        DEFAULT_I18N_PATH.to_owned()
    };

    // Resolve relative paths against CWD.
    if std::path::Path::new(&base_path).is_absolute() {
        base_path
    } else {
        match std::env::current_dir() {
            Ok(cwd) => cwd.join(&base_path).to_string_lossy().to_string(),
            Err(e) => {
                log::warn!("Failed to get current dir: {e}, using relative path");
                base_path
            }
        }
    }
}

/// Detect the system locale.
///
/// Checks `$LANG` (macOS/Linux) and, as a last resort on macOS,
/// `defaults read -g AppleLocale`.
/// Re-initialize the i18n bundle using the persisted language setting.
///
/// Should be called after settings have been loaded (e.g. in `initialize_app`).
/// If the stored language is `"auto"`, follows the system locale.
/// Otherwise, uses the stored BCP47 tag (e.g. `"zh-CN"`, `"ja"`, `"en-US"`).
pub fn init_from_settings(app: &warpui::AppContext) {
    let stored = GeneralSettings::as_ref(app).language.clone();
    let locale_tag = if stored == "auto" || stored.is_empty() {
        std::env::var("WARP_LANG")
            .ok()
            .or_else(|| detect_system_locale())
            .unwrap_or_else(|| "en-US".to_owned())
    } else {
        stored.clone()
    };

    let resolved_path = resolve_i18n_path();

    let langid = match locale_tag.parse::<LanguageIdentifier>() {
        Ok(id) => id,
        Err(_) => {
            log::warn!("Invalid stored locale tag '{locale_tag}', ignoring");
            return;
        }
    };

    log::info!("Reloading i18n from settings: locale={locale_tag}");

    match I18nBundle::from_dir(&resolved_path, &langid) {
        Ok(bundle) => {
            warp_i18n::set_bundle(bundle);
            log::info!("i18n reloaded successfully for locale '{locale_tag}'");
        }
        Err(e) => {
            log::warn!("Failed to reload i18n for '{locale_tag}': {e:?}");
        }
    }
}

fn detect_system_locale() -> Option<String> {
    // Use sys-locale for cross-platform detection (Windows, macOS, Linux).
    if let Some(locale) = sys_locale::get_locale() {
        let normalized = locale.replace('_', "-");
        if !normalized.is_empty() && normalized.len() >= 2 {
            return Some(normalized);
        }
    }

    // Fallback: check $LANG (macOS/Linux).
    if let Ok(lang) = std::env::var("LANG") {
        let normalized = lang
            .split('.')
            .next()
            .unwrap_or(&lang)
            .replace('_', "-");
        if !normalized.is_empty() && normalized.len() >= 2 {
            return Some(normalized);
        }
    }

    None
}

/// Returns the path to the `i18n` directory inside the macOS .app bundle's
/// Resources folder, if running from a bundle.
///
/// For a bundled build at `WarpOss.app`, this returns something like:
///   `WarpOss.app/Contents/Resources/i18n`
fn bundle_resources_dir() -> Option<String> {
    #[cfg(target_os = "macos")]
    {
        use objc2_foundation::NSBundle;

        let bundle = NSBundle::mainBundle();
        let path_string: String = bundle.bundlePath().to_string();
        let resources_dir = std::path::Path::new(&path_string)
            .join("Contents")
            .join("Resources")
            .join("i18n");
        if resources_dir.is_dir() {
            return Some(resources_dir.to_string_lossy().to_string());
        }
    }

    None
}

/// Set and persist the display language, then reload the i18n bundle.
///
/// `locale_tag` should be a BCP47 tag like `"zh-CN"`, `"ja"`, `"en-US"`, or
/// `"auto"` to follow the system locale.
pub fn set_language(app: &mut warpui::AppContext, locale_tag: &str) {
    use ::settings::Setting; // Needed for .set_value()

    GeneralSettings::handle(app).update(app, |settings, ctx| {
        crate::report_if_error!(settings.language.set_value(locale_tag.to_string(), ctx));
    });

    init_from_settings(app);
}
