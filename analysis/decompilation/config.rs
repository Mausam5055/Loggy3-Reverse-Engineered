//! Module: config
//! Address Range: 0x00409904 - 0x00409A60
//! Purpose: Tauri configuration extraction and parsing
//! Embedded Data: 0x005E23C0 (Base Config) & 0x005E3000 (Windows Overlay)
//! Confidence: High

use alloc::string::String;
use alloc::vec::Vec;
use serde::{Deserialize, Serialize};

/// Embedded base Tauri JSON configuration
pub const EMBEDDED_BASE_CONFIG_JSON: &str = r#"{
  "$schema": "https://schema.tauri.app/config/2",
  "productName": "Loggy3",
  "version": "0.10.5",
  "identifier": "com.loggy3.recorder",
  "build": {
    "frontendDist": "../src"
  },
  "app": {
    "withGlobalTauri": true,
    "windows": [
      {
        "create": false,
        "title": "Loggy3",
        "width": 860,
        "height": 620,
        "resizable": false,
        "visible": true,
        "acceptFirstMouse": true,
        "skipTaskbar": false,
        "titleBarStyle": "Visible",
        "theme": "Light"
      }
    ],
    "security": {
      "csp": null
    }
  },
  "bundle": {
    "active": true,
    "targets": "all",
    "resources": {
      "../../target/release/loggy3-kernel": "loggy3-kernel",
      "../../target/release/replay_mac": "replay_mac",
      "../src/assets/icon.png": "icons/icon.png",
      "../src/assets/menubar.png": "icons/menubar.png"
    },
    "createUpdaterArtifacts": true,
    "icon": [
      "icons/32x32.png",
      "icons/128x128.png",
      "icons/icon.icns",
      "icons/icon.ico"
    ],
    "macOS": {
      "signingIdentity": "ED8CD4E7F16183DA663A623CB6FA20ED0F815AA9",
      "entitlements": "app.entitlements"
    }
  },
  "plugins": {
    "updater": {
      "pubkey": "dW50cnVzdGVkIGNvbW1lbnQ6IG1pbmlzaWduIHB1YmxpYyBrZXk6IEExRDg1NkQ1NjQ5ODU1OTIKUldTU1ZaaGsxVmJZb2Y4eng2d0xEUkd0dDh2R1lsdUZuTTRBa0NyMjQ0R2lTK0dvSHFCcUVCS24K",
      "endpoints": [
        "https://loggy3.com/macos/latest.json"
      ]
    }
  }
}"#;

/// Embedded Windows overlay JSON configuration
pub const EMBEDDED_WINDOWS_CONFIG_JSON: &str = r#"{
  "bundle": {
    "createUpdaterArtifacts": true,
    "externalBin": [
      "binaries/loggy3-kernel",
      "binaries/replay_windows"
    ],
    "resources": {
      "binaries/loggy3-kernel.exe": "loggy3-kernel.exe",
      "binaries/replay_windows.exe": "replay_windows.exe",
      "../src/assets/icon.png": "icons/icon.png",
      "../src/assets/menubar.png": "icons/menubar.png"
    }
  },
  "plugins": {
    "updater": {
      "endpoints": [
        "https://loggy3.com/windows/latest.json"
      ]
    }
  }
}"#;

#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct TauriConfig {
    pub productName: Option<String>,
    pub version: Option<String>,
    pub identifier: Option<String>,
    pub plugins: PluginsConfig,
}

#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct PluginsConfig {
    pub updater: UpdaterConfig,
}

#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct UpdaterConfig {
    pub pubkey: Option<String>,
    pub endpoints: Vec<String>,
}

/// Address: 0x00409904
/// Reconstructed function: config_parse_base_json()
pub fn config_parse_base_json() -> Result<TauriConfig, serde_json::Error> {
    serde_json::from_str(EMBEDDED_BASE_CONFIG_JSON)
}

/// Address: 0x0040999E
/// Reconstructed function: config_parse_windows_json()
pub fn config_parse_windows_json() -> Result<TauriConfig, serde_json::Error> {
    serde_json::from_str(EMBEDDED_WINDOWS_CONFIG_JSON)
}

/// Address: 0x004099FF
/// Reconstructed function: config_extract_updater_pubkey()
pub fn config_extract_updater_pubkey(config: &TauriConfig) -> Option<&str> {
    config.plugins.updater.pubkey.as_deref()
}

/// Address: 0x00409A2F
/// Reconstructed function: config_extract_updater_endpoint()
pub fn config_extract_updater_endpoint(config: &TauriConfig) -> Option<&str> {
    config.plugins.updater.endpoints.first().map(|s| s.as_str())
}

