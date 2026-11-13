//! Module: crypto_verification
//! Address Range: 0x00408410 - 0x00408CC0 & 0x00409190 - 0x00409740
//! Purpose: Cryptographic payload hashing (SHA-256) and Minisign digital signature verification
//! Confidence: High

use alloc::string::String;
use alloc::vec::Vec;
use sha2::{Sha256, Digest};
use base64::engine::general_purpose::STANDARD as BASE64;
use base64::Engine;

/// Address: 0x00408410
/// Reconstructed function: crypto_verify_payload_checksum()
///
/// Computes SHA-256 digest over payload bytes and performs hex-string comparison.
pub fn crypto_verify_payload_checksum(
    payload: &[u8],
    expected_hex_hash: &str,
) -> Result<(), String> {
    let mut hasher = Sha256::new();
    hasher.update(payload);
    let result = hasher.finalize();
    let computed_hex = alloc::format!("{:x}", result);

    if computed_hex.eq_ignore_ascii_case(expected_hex_hash.trim()) {
        Ok(())
    } else {
        Err(String::from("the installer checksum does not match"))
    }
}

/// Minisign public key layout (Ed25519)
pub struct MinisignPublicKey {
    pub key_id: [u8; 8],
    pub public_key: [u8; 32],
}

/// Address: 0x00409190
/// Reconstructed function: crypto_verify_minisign_signature()
///
/// Decodes the embedded Minisign public key string:
/// "untrusted comment: minisign public key: A1D856D564985592\nRWSSVzhk1VbYof8zx6wLDRGtt8vGYluFnM4AkCr244GiS+GoHqBqEBKn\n"
/// Decodes the manifest signature string and verifies Ed25519 signature over payload bytes.
pub fn crypto_verify_minisign_signature(
    payload: &[u8],
    signature_str: &str,
    pubkey_str: &str,
) -> Result<(), String> {
    // 1. Parse Minisign public key lines
    let pubkey_b64 = pubkey_str
        .lines()
        .find(|line| !line.starts_with("untrusted comment:"))
        .ok_or_else(|| String::from("the updater public key is invalid"))?;

    let pubkey_bytes = BASE64.decode(pubkey_b64.trim())
        .map_err(|_| String::from("the updater public key is invalid"))?;

    // Minisign pubkey binary format:
    // 2 bytes signature algorithm ('Ed')
    // 8 bytes key ID
    // 32 bytes Ed25519 public key
    if pubkey_bytes.len() != 42 || &pubkey_bytes[..2] != b"Ed" {
        return Err(String::from("the updater public key is invalid"));
    }

    let raw_pubkey = &pubkey_bytes[10..42];

    // 2. Parse Minisign signature lines
    let sig_b64 = signature_str
        .lines()
        .find(|line| !line.starts_with("untrusted comment:"))
        .ok_or_else(|| String::from("the updater signature is invalid"))?;

    let sig_bytes = BASE64.decode(sig_b64.trim())
        .map_err(|_| String::from("the updater signature is invalid"))?;

    // Minisign signature format:
    // 2 bytes untrusted comment header
    // 8 bytes key ID
    // 64 bytes signature
    if sig_bytes.len() < 74 || &sig_bytes[..2] != b"ED" {
        return Err(String::from("the updater signature is invalid"));
    }

    let key_id = &sig_bytes[2..10];
    if key_id != &pubkey_bytes[2..10] {
        return Err(String::from("the installer updater signature did not verify"));
    }

    let ed25519_sig = &sig_bytes[10..74];

    // 3. Ed25519 signature verification
    use ed25519_dalek::{Verifier, VerifyingKey, Signature};

    let verifying_key = VerifyingKey::from_bytes(raw_pubkey.try_into().unwrap())
        .map_err(|_| String::from("the updater public key is invalid"))?;

    let signature = Signature::from_bytes(ed25519_sig.try_into().unwrap());

    verifying_key.verify(payload, &signature)
        .map_err(|_| String::from("the installer updater signature did not verify"))?;

    Ok(())
}

