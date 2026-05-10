//! Locale detection and configuration.
//!
//! Provides helpers for:
//! - Detecting the system locale via `$LANG` or platform APIs
//! - Marshalling locale identifiers to/from FTL directory names

use unic_langid::LanguageIdentifier;

/// Default locale used when no locale can be detected.
pub const DEFAULT_LOCALE: &str = "en-US";

/// Configuration for the i18n system, sourced from the application's own
/// settings so that the user can override the system language.
#[derive(Debug, Clone)]
pub struct LocaleConfig {
    /// The language code stored in the user's settings (or system default).
    /// Examples: `"en-US"`, `"zh-Hans"`, `"ja"`.
    pub language_tag: String,
}

impl LocaleConfig {
    /// Use the default locale.
    pub fn default() -> Self {
        Self {
            language_tag: DEFAULT_LOCALE.to_owned(),
        }
    }

    /// Use a specific locale tag.
    pub fn with_tag(tag: impl Into<String>) -> Self {
        Self {
            language_tag: tag.into(),
        }
    }

    /// Detect the system locale at startup.
    #[cfg(not(target_family = "wasm"))]
    pub fn from_system() -> Self {
        let tag = detect_system_locale().unwrap_or_else(|| DEFAULT_LOCALE.to_owned());
        Self {
            language_tag: tag,
        }
    }

    /// Parse the language tag into a `LanguageIdentifier` that fluent-rs can use.
    pub fn to_langid(&self) -> LanguageIdentifier {
        self.language_tag
            .parse()
            .unwrap_or_else(|_| DEFAULT_LOCALE.parse().unwrap())
    }
}

/// Attempt to detect the user's system locale.
///
/// On macOS/Linux, checks the `LANG` environment variable.
/// On all platforms, falls back to `"en-US"`.
#[cfg(not(target_family = "wasm"))]
pub fn detect_system_locale() -> Option<String> {
    // Check $LANG (macOS/Linux standard).
    if let Ok(lang) = std::env::var("LANG") {
        // LANG is typically "en_US.UTF-8" — convert to "en-US".
        let normalized = lang
            .split('.')
            .next()
            .unwrap_or(&lang)
            .replace('_', "-");
        if normalized.len() >= 2 {
            return Some(normalized);
        }
    }

    // Fallback: macOS `defaults read` for AppleLocale.
    #[cfg(target_os = "macos")]
    {
        if let Ok(output) = std::process::Command::new("defaults")
            .args(["read", "-g", "AppleLocale"])
            .output()
        {
            if output.status.success() {
                let locale_str = String::from_utf8_lossy(&output.stdout)
                    .trim()
                    .to_owned();
                if !locale_str.is_empty() {
                    return Some(locale_str);
                }
            }
        }
    }

    None
}

/// Validate that a locale tag is well-formed.
#[allow(dead_code)]
pub fn is_valid_locale(tag: &str) -> bool {
    tag.parse::<LanguageIdentifier>().is_ok()
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_valid_locales() {
        assert!(is_valid_locale("en-US"));
        assert!(is_valid_locale("zh-Hans"));
        assert!(is_valid_locale("zh-Hans-CN"));
        assert!(is_valid_locale("ja"));
        assert!(is_valid_locale("fr-FR"));
        assert!(is_valid_locale("de"));
    }

    #[test]
    fn test_invalid_locales() {
        assert!(!is_valid_locale(""));
        assert!(!is_valid_locale("   "));
    }

    #[test]
    fn test_locale_config_default() {
        let config = LocaleConfig::default();
        assert_eq!(config.language_tag, "en-US");
        assert_eq!(config.to_langid().to_string(), "en-US");
    }

    #[test]
    fn test_locale_config_custom() {
        let config = LocaleConfig::with_tag("zh-Hans");
        assert_eq!(config.language_tag, "zh-Hans");
        assert_eq!(config.to_langid().to_string(), "zh-Hans");
    }
}
