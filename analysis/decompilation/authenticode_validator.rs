//! Module: authenticode_validator
//! Address Range: 0x00408250 - 0x00408410
//! Purpose: Windows Authenticode signature verification via WinVerifyTrust
//! Confidence: High

use core::ffi::c_void;
use alloc::string::String;
use alloc::vec::Vec;

#[repr(C)]
pub struct GUID {
    pub Data1: u32,
    pub Data2: u16,
    pub Data3: u16,
    pub Data4: [u8; 8],
}

// WINTRUST_ACTION_GENERIC_VERIFY_V2
// {00AAC56B-CD44-11d0-8CC2-00C04FC295EE}
pub const WINTRUST_ACTION_GENERIC_VERIFY_V2: GUID = GUID {
    Data1: 0x00AAC56B,
    Data2: 0xCD44,
    Data3: 0x11D0,
    Data4: [0x8C, 0xC2, 0x00, 0xC0, 0x4F, 0xC2, 0x95, 0xEE],
};

#[repr(C)]
pub struct WINTRUST_FILE_INFO {
    pub cbStruct: u32,
    pub pcwszFilePath: *const u16,
    pub hFile: *mut c_void,
    pub pgKnownSubject: *const GUID,
}

#[repr(C)]
pub struct WINTRUST_DATA {
    pub cbStruct: u32,
    pub pPolicyCallbackData: *mut c_void,
    pub pSIPClientData: *mut c_void,
    pub dwUIChoice: u32,
    pub fdwRevocationChecks: u32,
    pub dwUnionChoice: u32,
    pub pFile: *mut WINTRUST_FILE_INFO,
    pub dwStateAction: u32,
    pub hWVTStateData: *mut c_void,
    pub pwszURLReference: *mut u16,
    pub dwProvFlags: u32,
    pub dwUIContext: u32,
    pub pSignatureSettings: *mut c_void,
}

const WTD_UI_NONE: u32 = 2;
const WTD_REVOKE_WHOLECHAIN: u32 = 1;
const WTD_CHOICE_FILE: u32 = 1;
const WTD_STATEACTION_VERIFY: u32 = 1;
const WTD_STATEACTION_CLOSE: u32 = 2;
const WTD_SAFER_FLAG: u32 = 0x00000100;
const INVALID_HANDLE_VALUE: *mut c_void = -1isize as *mut c_void;

extern "system" {
    fn WinVerifyTrust(
        hwnd: *mut c_void,
        pgActionID: *const GUID,
        pWVTData: *mut WINTRUST_DATA,
    ) -> i32;
}

/// Address: 0x00408250
/// Reconstructed function: sec_verify_authenticode_signature()
///
/// Calls wintrust.dll!WinVerifyTrust to verify the digital signature of the installer:
/// - Enforces trusted root certification authority
/// - Enforces signature integrity and non-tampering
/// - Enforces certificate revocation checking (WTD_REVOKE_WHOLECHAIN)
pub fn sec_verify_authenticode_signature(file_path: &str) -> Result<(), String> {
    let mut file_path_w: Vec<u16> = file_path.encode_utf16().collect();
    file_path_w.push(0);

    unsafe {
        let mut file_info: WINTRUST_FILE_INFO = core::mem::zeroed();
        file_info.cbStruct = core::mem::size_of::<WINTRUST_FILE_INFO>() as u32;
        file_info.pcwszFilePath = file_path_w.as_ptr();
        file_info.hFile = core::ptr::null_mut();
        file_info.pgKnownSubject = core::ptr::null();

        let mut trust_data: WINTRUST_DATA = core::mem::zeroed();
        trust_data.cbStruct = core::mem::size_of::<WINTRUST_DATA>() as u32;
        trust_data.pPolicyCallbackData = core::ptr::null_mut();
        trust_data.pSIPClientData = core::ptr::null_mut();
        trust_data.dwUIChoice = WTD_UI_NONE; // silent, no UI prompts
        trust_data.fdwRevocationChecks = WTD_REVOKE_WHOLECHAIN;
        trust_data.dwUnionChoice = WTD_CHOICE_FILE;
        trust_data.pFile = &mut file_info;
        trust_data.dwStateAction = WTD_STATEACTION_VERIFY;
        trust_data.dwProvFlags = WTD_SAFER_FLAG;

        let status = WinVerifyTrust(
            INVALID_HANDLE_VALUE,
            &WINTRUST_ACTION_GENERIC_VERIFY_V2,
            &mut trust_data,
        );

        // Close state
        trust_data.dwStateAction = WTD_STATEACTION_CLOSE;
        WinVerifyTrust(
            INVALID_HANDLE_VALUE,
            &WINTRUST_ACTION_GENERIC_VERIFY_V2,
            &mut trust_data,
        );

        if status == 0 {
            // ERROR_SUCCESS
            Ok(())
        } else {
            Err(alloc::format!("the Windows installer signature did not verify (0x{:08x})", status))
        }
    }
}

