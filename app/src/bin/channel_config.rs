//! Tools for loading a [`ChannelConfig`] from the external config generator binary.
//!
//! For non-bundled builds, the generator is invoked at runtime. For bundled builds, the config
//! is embedded at compile time via the build script.
use warp_core::channel::ChannelConfig;

/// The name of the config generator binary, expected to be on PATH.
const CONFIG_BIN_NAME: &str = "warp-channel-config";

#[macro_export]
#[cfg(windows)]
macro_rules! path_concat {
    ($path:expr, $file:expr) => {
        concat!($path, "\\", $file)
    };
}
#[macro_export]
#[cfg(not(windows))]
macro_rules! path_concat {
    ($path:expr, $file:expr) => {
        concat!($path, "/", $file)
    };
}

#[macro_export]
macro_rules! load_config {
    ($channel:expr) => {{
        #[cfg(feature = "release_bundle")]
        {
            channel_config::load_config_from_embedded(include_str!($crate::path_concat!(
                env!("OUT_DIR"),
                concat!($channel, "_config.json")
            )))
        }

        #[cfg(not(feature = "release_bundle"))]
        {
            channel_config::load_config_from_generator($channel)
        }
    }};
}
pub use load_config;

/// Invokes the config generator binary at runtime and deserializes its JSON output into a
/// [`ChannelConfig`].
#[cfg_attr(feature = "release_bundle", expect(dead_code))]
pub fn load_config_from_generator(channel: &str) -> ChannelConfig {
    let target_family = if cfg!(target_family = "wasm") {
        "wasm"
    } else {
        "native"
    };

    let target_os = if cfg!(target_os = "macos") {
        "macos"
    } else if cfg!(target_os = "windows") {
        "windows"
    } else {
        "linux"
    };

    let output = match command::blocking::Command::new(CONFIG_BIN_NAME)
        .arg("--channel")
        .arg(channel)
        .arg("--target-family")
        .arg(target_family)
        .arg("--target-os")
        .arg(target_os)
        .output()
    {
        Ok(output) if output.status.success() => output,
        _ => {
            // Binary not found or blocked — use inline dev config
            return inline_dev_config(channel);
        }
    };

    serde_json::from_slice(&output.stdout).unwrap_or_else(|err| {
        let stdout = String::from_utf8_lossy(&output.stdout);
        panic!("Failed to parse config generator output for channel '{channel}': {err}\nOutput:\n{stdout}")
    })
}

fn inline_dev_config(channel: &str) -> ChannelConfig {
    let json = r#"{"app_id":"dev.warp.Warp","logfile_name":"warp.log","server_config":{"server_root_url":"https://app.warp.dev","rtc_server_url":"wss://rtc.app.warp.dev/graphql/v2","session_sharing_server_url":"wss://sessions.app.warp.dev","firebase_auth_api_key":"AIzaSyBdy3O3S9hrdayLJxJ7mriBR4qgUaUygAs"},"oz_config":{"oz_root_url":"https://oz.warp.dev","workload_audience_url":null},"telemetry_config":null,"autoupdate_config":null,"crash_reporting_config":null,"mcp_static_config":null}"#;
    serde_json::from_str(json)
        .unwrap_or_else(|err| panic!("Failed to parse inline dev config for channel '{channel}': {err}"))
}

/// Deserializes a [`ChannelConfig`] from a JSON string embedded at compile time.
///
/// This is used to load the channel configuration in release bundles, where configuration
/// is embedded at compile time instead of being generated at runtime.
#[cfg_attr(not(feature = "release_bundle"), expect(dead_code))]
pub fn load_config_from_embedded(json: &str) -> ChannelConfig {
    serde_json::from_str(json)
        .unwrap_or_else(|err| panic!("Failed to parse embedded channel config: {err}"))
}
