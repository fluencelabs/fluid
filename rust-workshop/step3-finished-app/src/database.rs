use log;

use crate::api::AppResult;
use crate::errors::err_msg;
use crate::ffi;

pub fn query(query: String) -> AppResult<String> {
    log::debug!("executing query: '{}'", query);

    unsafe {
        let bytes = query.as_bytes();
        let query_ptr = ffi::allocate(bytes.len());

        for (i, byte) in bytes.iter().enumerate() {
            let ptr = query_ptr + i as i32;
            ffi::store(ptr, *byte);
        }

        let result_ptr = ffi::invoke(query_ptr, bytes.len());

        let mut result_size: usize = 0;
        for i in 0..3 {
            let ptr = result_ptr + i as i32;
            let b = ffi::load(ptr) as usize;
            result_size = result_size + (b << (8 * i));
        }

        let mut result_bytes = vec![0; result_size as usize];
        for i in 4..(result_size + 4) {
            let ptr = result_ptr + i as i32;
            let b = ffi::load(ptr);
            result_bytes[i as usize - 4] = b;
        }

        let result_str = std::str::from_utf8(result_bytes.as_slice());
        if result_str.is_err() {
            log::error!("unable to decode result from bytes: {:#x?}", result_bytes);
        }

        result_str
            .map_err(|e| {
                err_msg(&format!(
                    "unable to decode result from bytes {:#x?}: {}",
                    result_bytes, e
                ))
            })
            .map(|s| s.to_string())
    }
}
