//! Module: ui_dialogs
//! Address Range: 0x00407990 - 0x00407B90
//! Purpose: Error reporting and user modal dialog presentation via MessageBoxW
//! Confidence: High

use core::ffi::c_void;
use alloc::vec::Vec;

const MB_OK: u32 = 0x00000000;
const MB_ICONERROR: u32 = 0x00000010;

extern "system" {
    fn MessageBoxW(
        hWnd: *mut c_void,
        lpText: *const u16,
        lpCaption: *const u16,
        uType: u32,
    ) -> i32;
}

/// Address: 0x00407990
/// Reconstructed function: ui_display_error_dialog()
///
/// Converts title and message into UTF-16 wide strings and displays
/// a modal message box using user32.dll!MessageBoxW:
/// - hWnd: NULL
/// - uType: MB_ICONERROR | MB_OK (0x00000010)
pub fn ui_display_error_dialog(title: &str, message: &str) {
    let mut title_w: Vec<u16> = title.encode_utf16().collect();
    title_w.push(0);

    let mut message_w: Vec<u16> = message.encode_utf16().collect();
    message_w.push(0);

    unsafe {
        MessageBoxW(
            core::ptr::null_mut(),
            message_w.as_ptr(),
            title_w.as_ptr(),
            MB_ICONERROR | MB_OK,
        );
    }
}

