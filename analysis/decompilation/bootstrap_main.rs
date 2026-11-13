//! Module: bootstrap_main
//! Address Range: 0x00412E90 - 0x00413000 & 0x00409870 - 0x0040AC60
//! Purpose: Main bootstrap orchestrator for Loggy3
//! Original File: gui/src-tauri/src/bin/loggy3-bootstrap.rs
//! Confidence: High

use crate::config::*;
use crate::system_arch::*;
use crate::network_downloader::*;
use crate::manifest_parser::*;
use crate::crypto_verification::*;
use crate::disk_io::*;
use crate::authenticode_validator::*;
use crate::process_execution::*;
use crate::ui_dialogs::*;

/// Address: 0x00412E90
/// Reconstructed function: loggy3_bootstrap::main()
///
/// Execution Flow:
/// 1. Installs local panic/error handler
/// 2. Invokes `bootstrap_run()`
/// 3. If `bootstrap_run()` returns Err(msg):
///    - Invokes `ui_display_error_dialog("Loggy3", &msg)`
///    - Calls `exit(1)`
/// 4. If Ok(()):
///    - Cleanly exits with code 0
#[no_mangle]
pub fn bootstrap_main() -> i32 {
    // 0x00412EBD: call 0x00409870 (bootstrap_run)
    match bootstrap_run() {
        Ok(()) => {
            // 0x00412EC6: return 0
            0
        }
        Err(err_msg) => {
            // 0x00412EE5: call 0x00407990 (ui_display_error_dialog)
            ui_display_error_dialog("Loggy3", &err_msg);
            // 0x00412EEF: call 0x0047CF40 (process::exit(1))
            1
        }
    }
}

/// Address: 0x00409870
/// Reconstructed function: loggy3_bootstrap::run()
///
/// The central 16-step bootstrapping pipeline:
/// Step 1:  Parse embedded base configuration (0x00409904)
/// Step 2:  Parse embedded Windows overlay configuration (0x0040999E)
/// Step 3:  Extract updater public key (0x004099FF)
/// Step 4:  Extract updater endpoint URL (0x00409A2F)
/// Step 5:  Validate updater URL format (0x00409A82)
/// Step 6:  Assert endpoint domain trust (0x00409DD1)
/// Step 7:  Detect host CPU architecture via IsWow64Process2 / GetNativeSystemInfo (0x0040A01A)
/// Step 8:  Issue secure HTTPS GET to fetch release manifest (0x0040A40E)
/// Step 9:  Parse JSON release manifest into UpdateManifest (0x0040A907)
/// Step 10: Download installer executable payload stream (0x0040A9FD)
/// Step 11: Compute SHA-256 payload checksum and compare to manifest (0x0040AA39)
/// Step 12: Cryptographically verify minisign signature using embedded pubkey (0x0040AAB4)
/// Step 13: Verify PE header and target architecture compatibility (0x0040AAD4)
/// Step 14: Write payload to temporary file (%TEMP%\...-setup.exe) (0x0040AB3C)
/// Step 15: Validate Windows Authenticode digital signature via WinVerifyTrust (0x0040AB80)
/// Step 16: Launch installer via ShellExecuteExW and wait for exit code (0x0040ABB1)
pub fn bootstrap_run() -> Result<(), String> {
    // Step 1: Base Tauri config
    // 0x00409904: config_parse_base_json()
    let base_config = config_parse_base_json()
        .map_err(|_| String::from("the embedded base configuration is invalid"))?;

    // Step 2: Windows platform config
    // 0x0040999E: config_parse_windows_json()
    let win_config = config_parse_windows_json()
        .map_err(|_| String::from("the embedded Windows configuration is invalid"))?;

    // Step 3: Extract Minisign public key
    // 0x004099FF: config_extract_updater_pubkey()
    let pubkey_str = base_config
        .plugins
        .updater
        .pubkey
        .as_deref()
        .ok_or_else(|| String::from("the embedded updater public key is missing"))?;

    // Step 4: Extract primary updater endpoint URL
    // 0x00409A2F: config_extract_updater_endpoint()
    let endpoint_url = win_config
        .plugins
        .updater
        .endpoints
        .first()
        .ok_or_else(|| String::from("the embedded Windows updater endpoint is missing"))?;

    // Step 5: Validate endpoint URL
    // 0x00409A82: net_validate_endpoint_url()
    let parsed_url = net_validate_endpoint_url(endpoint_url)
        .map_err(|_| String::from("the updater endpoint is invalid"))?;

    // Step 6: Verify endpoint trust
    // 0x00409DD1: net_verify_endpoint_trust()
    net_verify_endpoint_trust(&parsed_url)
        .map_err(|_| String::from("the updater endpoint is not trusted"))?;

    // Step 7: Detect host system architecture
    // 0x0040A01A: sys_detect_host_architecture()
    let host_arch = sys_detect_host_architecture()?;

    // Step 8: Fetch release manifest from endpoint
    // 0x0040A40E: net_fetch_release_manifest()
    let manifest_bytes = net_fetch_release_manifest(&parsed_url)
        .map_err(|_| String::from("could not download the release manifest"))?;

    // Step 9: Parse release manifest
    // 0x0040A907: manifest_parse_update_json()
    let manifest = manifest_parse_update_json(&manifest_bytes)
        .map_err(|_| String::from("the release manifest is not valid JSON"))?;

    if manifest.version.is_empty() {
        return Err(String::from("the release manifest has no version"));
    }

    let signature_b64 = manifest.signature
        .as_ref()
        .ok_or_else(|| String::from("the release has no updater signature"))?;

    let installer_url = manifest.url
        .as_ref()
        .ok_or_else(|| String::from("the release contains an invalid installer URL"))?;

    // Step 10: Download installer binary payload
    // 0x0040A9FD: net_fetch_installer_payload()
    let installer_bytes = net_fetch_installer_payload(installer_url)
        .map_err(|_| String::from("could not download the installer"))?;

    // Step 11: Verify SHA-256 payload checksum against manifest
    // 0x0040AA39: crypto_verify_payload_checksum()
    if let Some(expected_hash) = &manifest.checksum {
        crypto_verify_payload_checksum(&installer_bytes, expected_hash)
            .map_err(|_| String::from("the installer checksum does not match"))?;
    } else {
        return Err(String::from("the production installer URL has no content hash"));
    }

    // Step 12: Verify Minisign signature
    // 0x0040AAB4: crypto_verify_minisign_signature()
    crypto_verify_minisign_signature(&installer_bytes, signature_b64, pubkey_str)
        .map_err(|_| String::from("the installer updater signature did not verify"))?;

    // Step 13: Verify PE header and CPU architecture compatibility
    // 0x0040AAD4: sys_verify_pe_and_architecture()
    sys_verify_pe_and_architecture(&installer_bytes, host_arch)?;

    // Step 14: Write payload to temporary file (%TEMP%\...-setup.exe)
    // 0x0040AB3C: fs_write_temporary_installer()
    let temp_installer_path = fs_write_temporary_installer(&installer_bytes, installer_url)
        .map_err(|_| String::from("could not write the temporary installer"))?;

    // Step 15: Verify Authenticode digital signature on written file
    // 0x0040AB80: sec_verify_authenticode_signature()
    sec_verify_authenticode_signature(&temp_installer_path)
        .map_err(|_| String::from("the Windows installer signature did not verify"))?;

    // Step 16: Launch installer and synchronize execution
    // 0x0040ABB1: exec_launch_installer_and_wait()
    exec_launch_installer_and_wait(&temp_installer_path)?;

    Ok(())
}

