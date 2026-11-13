//! Module: network_downloader
//! Address Range: 0x00409A82 - 0x00409DF0 & 0x0040A40E - 0x0040B560
//! Purpose: HTTPS network communication, endpoint trust assertions, and payload streaming
//! Dependencies: reqwest 0.11.27, hyper 0.14.32, h2 0.3.27, schannel 0.1.30, tokio 1.54.1
//! Confidence: High

use alloc::string::String;
use alloc::vec::Vec;
use url::Url;

/// Address: 0x00409A82
/// Reconstructed function: net_validate_endpoint_url()
///
/// Parses and verifies URL scheme (must be https:// or http://).
pub fn net_validate_endpoint_url(endpoint_str: &str) -> Result<Url, String> {
    let url = Url::parse(endpoint_str)
        .map_err(|_| String::from("the updater endpoint is invalid"))?;

    if url.scheme() != "https" && url.scheme() != "http" {
        return Err(String::from("the updater endpoint is invalid"));
    }

    Ok(url)
}

/// Address: 0x00409DD1
/// Reconstructed function: net_verify_endpoint_trust()
///
/// Asserts that the endpoint domain strictly belongs to the official project infrastructure:
/// - Must match domain "loggy3.com" or a subdomain thereof.
/// - Any foreign or hijacked endpoint is rejected.
pub fn net_verify_endpoint_trust(url: &Url) -> Result<(), String> {
    let host = url.host_str().ok_or_else(|| String::from("the updater endpoint is not trusted"))?;

    if host == "loggy3.com" || host.ends_with(".loggy3.com") {
        Ok(())
    } else {
        Err(String::from("the updater endpoint is not trusted"))
    }
}

/// Address: 0x0040A40E
/// Reconstructed function: net_fetch_release_manifest()
///
/// Issues secure HTTPS GET request to obtain `latest.json`.
/// Uses Windows Schannel TLS backend (crypt32.dll / secur32.dll).
pub fn net_fetch_release_manifest(url: &Url) -> Result<Vec<u8>, String> {
    // Internally sets up reqwest::blocking::Client with Schannel TLS
    let client = reqwest::blocking::Client::builder()
        .use_native_tls() // schannel
        .build()
        .map_err(|_| String::from("could not initialize the secure downloader"))?;

    let response = client
        .get(url.as_str())
        .send()
        .map_err(|_| String::from("could not download the release manifest"))?;

    if !response.status().is_success() {
        return Err(String::from("could not download the release manifest"));
    }

    let bytes = response
        .bytes()
        .map_err(|_| String::from("could not download the release manifest"))?;

    Ok(bytes.to_vec())
}

/// Address: 0x0040A9FD
/// Reconstructed function: net_fetch_installer_payload()
///
/// Downloads the release installer binary payload from URL specified in manifest.
pub fn net_fetch_installer_payload(installer_url: &str) -> Result<Vec<u8>, String> {
    let url = Url::parse(installer_url)
        .map_err(|_| String::from("the release contains an invalid installer URL"))?;

    // Asserts installer URL trust
    net_verify_endpoint_trust(&url)
        .map_err(|_| String::from("the release installer URL is not trusted"))?;

    let client = reqwest::blocking::Client::builder()
        .use_native_tls()
        .build()
        .map_err(|_| String::from("could not initialize the secure downloader"))?;

    let response = client
        .get(url.as_str())
        .send()
        .map_err(|_| String::from("could not download the installer"))?;

    if !response.status().is_success() {
        return Err(String::from("could not download the installer"));
    }

    // 0x0040B040: Stream download with size validation
    net_download_stream_to_memory(response)
}

/// Address: 0x0040B040
/// Reconstructed function: net_download_stream_to_memory()
///
/// Streams HTTP response body into memory buffer:
/// - Verifies data is not empty ("the server returned an empty download")
/// - Enforces maximum size bounds ("the download is unexpectedly large")
/// - Detects network dropouts ("the download was interrupted")
pub fn net_download_stream_to_memory(
    mut response: reqwest::blocking::Response,
) -> Result<Vec<u8>, String> {
    use std::io::Read;

    let mut buffer = Vec::new();
    let mut chunk = [0u8; 8192];
    const MAX_ALLOWED_SIZE: usize = 250 * 1024 * 1024; // 250 MB guard

    loop {
        match response.read(&mut chunk) {
            Ok(0) => break, // EOF
            Ok(n) => {
                buffer.extend_from_slice(&chunk[..n]);
                if buffer.len() > MAX_ALLOWED_SIZE {
                    return Err(String::from("the download is unexpectedly large"));
                }
            }
            Err(_) => {
                return Err(String::from("the download was interrupted"));
            }
        }
    }

    if buffer.is_empty() {
        return Err(String::from("the server returned an empty download"));
    }

    Ok(buffer)
}

