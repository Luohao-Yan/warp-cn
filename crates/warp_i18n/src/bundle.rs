use std::path::Path;

use anyhow::{anyhow, Context, Result};
use fluent_bundle::{FluentArgs, FluentBundle, FluentResource};
use unic_langid::LanguageIdentifier;
use walkdir::WalkDir;

// ---------------------------------------------------------------------------
// Send + Sync safety for single-threaded UI runtime
// ---------------------------------------------------------------------------

// FluentBundle uses `RefCell<TypeMap>` internally via `IntlLangMemoizer`,
// which prevents auto-deriving Send/Sync.
//
// Warp runs all UI code on the main thread and never shares the bundle
// across threads — the RwLock provides exclusive access on the single
// thread that uses it.  The RefCell is never borrowed from two threads
// simultaneously, so Send + Sync is safe here.
unsafe impl Send for I18nBundle {}
unsafe impl Sync for I18nBundle {}

// ---------------------------------------------------------------------------
// I18nBundle
// ---------------------------------------------------------------------------

/// A container of Fluent localisation resources for a primary locale and
/// an `en-US` fallback.
///
/// Both locales share the same *domain-keyed message space*: messages are
/// identified by `"{domain}-{id}"` (e.g. `"common-cancel-label"`).  The FTL
/// files under `resources/i18n/{locale}/` use these namespaced IDs directly.
///
/// # Resolution order
///
/// 1. Primary locale (e.g. `zh-CN`)
/// 2. Fallback `en-US`
/// 3. Raw `"{domain}-{id}"` string as last resort
pub struct I18nBundle {
    primary: Option<FluentBundle<FluentResource>>,
    fallback: Option<FluentBundle<FluentResource>>,
}

impl I18nBundle {
    /// Load from a directory tree.
    ///
    /// Expects `{base_path}/{locale}/*.ftl` for the primary locale and
    /// `{base_path}/en-US/*.ftl` for the fallback.
    pub fn from_dir(base_path: &str, primary_locale: &LanguageIdentifier) -> Result<Self> {
        let base = Path::new(base_path);
        if !base.is_dir() {
            anyhow::bail!("i18n base directory not found: {base_path}");
        }

        let primary_str = primary_locale.to_string();
        let fallback_lang = "en-US";

        // If the primary locale is en-US, load it as the primary bundle.
        // Otherwise, load the primary locale and en-US as the fallback.
        if primary_str == fallback_lang {
            let primary = Self::load_locale_dir(&base.join(&primary_str))?;
            return Ok(Self {
                primary,
                fallback: None,
            });
        }

        let primary = Self::load_locale_dir(&base.join(&primary_str))?;
        let fallback = Self::load_locale_dir(&base.join(fallback_lang))?;

        Ok(Self { primary, fallback })
    }

    /// Create an empty bundle (for testing or post-init population).
    pub fn empty() -> Self {
        Self {
            primary: None,
            fallback: None,
        }
    }

    /// Format a message.
    ///
    /// `domain` and `id` are joined into the lookup key `"{domain}-{id}"`.
    pub fn format(&self, domain: &str, id: &str, args: Option<&FluentArgs>) -> String {
        let key = lookup_key(domain, id);

        // Try primary first.
        if let Some(bundle) = &self.primary {
            if let Some(msg) = bundle.get_message(&key) {
                if let Some(pattern) = msg.value() {
                    return Self::format_pattern(bundle, pattern, args);
                }
            }
        }

        // Fallback to en-US.
        if let Some(bundle) = &self.fallback {
            if let Some(msg) = bundle.get_message(&key) {
                if let Some(pattern) = msg.value() {
                    return Self::format_pattern(bundle, pattern, args);
                }
            }
        }

        // Last resort: return the raw key so the developer sees what's missing.
        key
    }

    // -- private helpers -------------------------------------------------------

    fn format_pattern(
        bundle: &FluentBundle<FluentResource>,
        pattern: &fluent_syntax::ast::Pattern<&str>,
        args: Option<&FluentArgs>,
    ) -> String {
        let mut errors = vec![];
        let result = bundle.format_pattern(pattern, args, &mut errors);
        for err in &errors {
            log::warn!("i18n format error: {err:?}");
        }
        result.into_owned()
    }

    fn load_locale_dir(dir: &Path) -> Result<Option<FluentBundle<FluentResource>>> {
        if !dir.is_dir() {
            return Ok(None);
        }

        let locale_str = dir
            .file_name()
            .and_then(|n| n.to_str())
            .ok_or_else(|| anyhow!("Invalid locale directory name: {}", dir.display()))?;

        let langid: LanguageIdentifier = locale_str
            .parse()
            .map_err(|e| anyhow!("Invalid locale tag '{locale_str}': {e:?}"))?;

        let mut bundle = FluentBundle::new(vec![langid]);
        bundle.set_use_isolating(false);

        let mut ftl_files: Vec<_> = WalkDir::new(dir)
            .into_iter()
            .filter_map(|e| e.ok())
            .filter(|e| e.path().extension().map_or(false, |ext| ext == "ftl"))
            .map(|e| e.into_path())
            .collect();
        ftl_files.sort();

        for path in &ftl_files {
            let content = std::fs::read_to_string(path)
                .with_context(|| format!("Failed to read {}", path.display()))?;

            match FluentResource::try_new(content) {
                Ok(resource) => {
                    if let Err(errors) = bundle.add_resource(resource) {
                        log::warn!(
                            "i18n: {} had errors: {:?}",
                            path.display(),
                            errors
                                .iter()
                                .map(|e| format!("{e:?}"))
                                .collect::<Vec<_>>()
                        );
                    }
                }
                Err((_resource, errors)) => {
                    log::warn!(
                        "i18n: failed to parse {}: {:?}",
                        path.display(),
                        errors
                            .iter()
                            .map(|e| format!("{e:?}"))
                            .collect::<Vec<_>>()
                    );
                }
            }
        }

        if ftl_files.is_empty() {
            log::warn!("i18n: No .ftl files found in {}", dir.display());
        }

        Ok(Some(bundle))
    }
}

// ---------------------------------------------------------------------------
// Builder pattern
// ---------------------------------------------------------------------------

/// Builder for assembling an `I18nBundle` programmatically.
pub struct I18nBundleBuilder {
    primary: Option<FluentBundle<FluentResource>>,
    fallback: Option<FluentBundle<FluentResource>>,
}

impl I18nBundleBuilder {
    pub fn new() -> Self {
        Self {
            primary: None,
            fallback: None,
        }
    }

    /// Set the primary locale bundle from inline FTL content.
    pub fn with_primary_ftl(
        mut self,
        locale: &LanguageIdentifier,
        ftl_content: &str,
    ) -> Result<Self> {
        let mut bundle = FluentBundle::new(vec![locale.clone()]);
        bundle.set_use_isolating(false);
        let resource = FluentResource::try_new(ftl_content.to_owned())
            .map_err(|(_, errors)| {
                anyhow!(
                    "Failed to parse primary FTL: {:?}",
                    errors
                        .iter()
                        .map(|e| format!("{e:?}"))
                        .collect::<Vec<_>>()
                )
            })?;
        bundle
            .add_resource(resource)
            .map_err(|errors| {
                anyhow!(
                    "Failed to add primary resource: {:?}",
                    errors
                        .iter()
                        .map(|e| format!("{e:?}"))
                        .collect::<Vec<_>>()
                )
            })?;
        self.primary = Some(bundle);
        Ok(self)
    }

    /// Set the fallback (`en-US`) bundle from inline FTL content.
    pub fn with_fallback_ftl(mut self, ftl_content: &str) -> Result<Self> {
        let locale: LanguageIdentifier = "en-US".parse().unwrap();
        let mut bundle = FluentBundle::new(vec![locale]);
        bundle.set_use_isolating(false);
        let resource = FluentResource::try_new(ftl_content.to_owned())
            .map_err(|(_, errors)| {
                anyhow!(
                    "Failed to parse fallback FTL: {:?}",
                    errors
                        .iter()
                        .map(|e| format!("{e:?}"))
                        .collect::<Vec<_>>()
                )
            })?;
        bundle
            .add_resource(resource)
            .map_err(|errors| {
                anyhow!(
                    "Failed to add fallback resource: {:?}",
                    errors
                        .iter()
                        .map(|e| format!("{e:?}"))
                        .collect::<Vec<_>>()
                )
            })?;
        self.fallback = Some(bundle);
        Ok(self)
    }

    pub fn build(self) -> I18nBundle {
        I18nBundle {
            primary: self.primary,
            fallback: self.fallback,
        }
    }
}

impl Default for I18nBundleBuilder {
    fn default() -> Self {
        Self::new()
    }
}

// ---------------------------------------------------------------------------
// Internal helpers
// ---------------------------------------------------------------------------

fn lookup_key(domain: &str, id: &str) -> String {
    // Hyphen-separated because FTL identifiers only support
    // [a-zA-Z0-9_-], not dots.
    format!("{domain}-{id}")
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

#[cfg(test)]
mod tests {
    use super::*;
    use unic_langid::langid;

    #[test]
    fn test_basic_lookup() {
        let bundle = I18nBundleBuilder::new()
            .with_fallback_ftl(
                r#"
common-cancel-label = Cancel
common-save-label = Save
common-search-placeholder = Search
"#,
            )
            .unwrap()
            .build();

        assert_eq!(bundle.format("common", "cancel-label", None), "Cancel");
        assert_eq!(bundle.format("common", "save-label", None), "Save");
        assert_eq!(
            bundle.format("common", "search-placeholder", None),
            "Search"
        );
    }

    #[test]
    fn test_missing_message_returns_key() {
        let bundle = I18nBundleBuilder::new()
            .with_fallback_ftl("common-existing = Hello\n")
            .unwrap()
            .build();

        assert_eq!(
            bundle.format("common", "missing-id", None),
            "common-missing-id"
        );
    }

    #[test]
    fn test_interpolation() {
        let bundle = I18nBundleBuilder::new()
            .with_fallback_ftl(
                r#"
welcome-message = Hello, { $name }!
"#,
            )
            .unwrap()
            .build();

        let mut args = FluentArgs::new();
        args.set("name", "Alice".to_owned());

        assert_eq!(
            bundle.format("welcome", "message", Some(&args)),
            "Hello, Alice!"
        );
    }

    #[test]
    fn test_primary_overrides_fallback() {
        let bundle = I18nBundleBuilder::new()
            .with_primary_ftl(
                &langid!("zh-CN"),
                r#"
common-cancel-label = 取消
common-save-label = 保存
"#,
            )
            .unwrap()
            .with_fallback_ftl(
                r#"
common-cancel-label = Cancel (en)
common-save-label = Save (en)
common-search-placeholder = Search
"#,
            )
            .unwrap()
            .build();

        assert_eq!(bundle.format("common", "cancel-label", None), "取消");
        assert_eq!(bundle.format("common", "save-label", None), "保存");
        assert_eq!(
            bundle.format("common", "search-placeholder", None),
            "Search"
        );
    }

    #[test]
    fn test_ja_locale() {
        let bundle = I18nBundleBuilder::new()
            .with_primary_ftl(
                &langid!("ja"),
                r#"
common-cancel-label = キャンセル
common-save-label = 保存
"#,
            )
            .unwrap()
            .with_fallback_ftl(
                r#"
common-cancel-label = Cancel
common-save-label = Save
common-search-placeholder = Search
"#,
            )
            .unwrap()
            .build();

        assert_eq!(bundle.format("common", "cancel-label", None), "キャンセル");
        assert_eq!(bundle.format("common", "save-label", None), "保存");
        assert_eq!(
            bundle.format("common", "search-placeholder", None),
            "Search"
        );
    }

    #[test]
    fn test_plural_forms() {
        let bundle = I18nBundleBuilder::new()
            .with_fallback_ftl(
                r#"
items-count = { $count ->
    [one] { $count } item
    *[other] { $count } items
}
"#,
            )
            .unwrap()
            .build();

        let mut args1 = FluentArgs::new();
        args1.set("count", 1i64);
        assert_eq!(
            bundle.format("items", "count", Some(&args1)),
            "1 item"
        );

        let mut args2 = FluentArgs::new();
        args2.set("count", 3i64);
        assert_eq!(
            bundle.format("items", "count", Some(&args2)),
            "3 items"
        );
    }
}
