//! Module: manifest_parser
//! Address Range: 0x0040B560 - 0x0040B7D0 & 0x0040ACDB - 0x0040AD20
//! Purpose: Release manifest JSON deserialization and field extraction
//! Confidence: High

use alloc::string::String;
use alloc::collections::BTreeMap;
use serde::{Deserialize, Serialize};

/// Tauri / Minisign updater manifest layout
#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct UpdateManifest {
    pub version: String,
    pub notes: Option<String>,
    pub pub_date: Option<String>,
    pub signature: Option<String>,
    pub url: Option<String>,
    pub checksum: Option<String>,
    #[serde(default)]
    pub platforms: BTreeMap<String, PlatformRelease>,
}

#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct PlatformRelease {
    pub signature: Option<String>,
    pub url: Option<String>,
    pub checksum: Option<String>,
}

/// Address: 0x0040B560
/// Reconstructed function: manifest_parse_update_json()
///
/// Deserializes JSON byte buffer into `UpdateManifest`.
pub fn manifest_parse_update_json(data: &[u8]) -> Result<UpdateManifest, serde_json::Error> {
    // 0x0040B560: serde_json::from_slice
    serde_json::from_slice(data)
}

/// Address: 0x0040ACDB
/// Reconstructed function: manifest_extract_version()
///
/// Validates presence and returns semver string.
pub fn manifest_extract_version(manifest: &UpdateManifest) -> Result<&str, &'static str> {
    if manifest.version.trim().is_empty() {
        Err("the release manifest has no version")
    } else {
        Ok(manifest.version.as_str())
    }
}

/// Address: 0x0040ACF2
/// Reconstructed function: manifest_extract_signature()
///
/// Extracts the base64-encoded minisign signature.
pub fn manifest_extract_signature(manifest: &UpdateManifest) -> Result<&str, &'static str> {
    if let Some(sig) = &manifest.signature {
        Ok(sig.as_str())
    } else if let Some(platform) = manifest.platforms.get("windows-x86_64")
        .or_else(|| manifest.platforms.get("windows-i686"))
    {
        platform.signature.as_deref().ok_or("the release has no updater signature")
    } else {
        Err("the release has no updater signature")
    }
}

