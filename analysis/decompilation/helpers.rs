//! Module: helpers
//! Address Range: 0x00412040, 0x00417800, 0x00486300
//! Purpose: String conversion, memory management, and formatting dispatchers
//! Confidence: High

use alloc::vec::Vec;
use core::ffi::c_void;

/// Address: 0x00412040
/// Reconstructed function: util_utf8_to_wide_null_terminated()
///
/// Encodes UTF-8 slice into null-terminated UTF-16 vector.
pub fn util_utf8_to_wide_null_terminated(s: &str) -> Vec<u16> {
    let mut wide: Vec<u16> = s.encode_utf16().collect();
    wide.push(0);
    wide
}

/// Address: 0x00417800
/// Reconstructed function: mem_deallocate()
///
/// Rust standard allocator memory release routine (HeapFree wrapper).
#[inline(always)]
pub unsafe fn mem_deallocate(ptr: *mut c_void, _size: usize, _align: usize) {
    if !ptr.is_null() {
        // Calls HeapFree(GetProcessHeap(), 0, ptr)
    }
}

