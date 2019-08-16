use log;

use crate::errors::AppResult;

use crate::errors::err_msg;
use crate::ffi;

// Execute query on SQLite
pub fn query(query: String) -> AppResult<String> {
    log::debug!("executing query: '{}'", query);

    unsafe {
        // Convert query string to bytes
        let query_bytes = query.as_bytes();
        // Allocate memory for query in SQLite module
        let query_ptr = ffi::allocate(query_bytes.len());

        // Store query in SQLite's memory
        for (i, byte) in query_bytes.iter().enumerate() {
            let ptr = query_ptr + i as i32;
            ffi::store(ptr, *byte);
        }

        // Execute the query, and get pointer to the result
        let result_ptr = ffi::invoke(query_ptr, query_bytes.len());

        // First 4 bytes at result_ptr location encode result size, read that first
        let mut result_size: usize = 0;
        for i in 0..3 {
            let ptr = result_ptr + i as i32;
            let b = ffi::load(ptr) as usize;
            result_size = result_size + (b << (8 * i));
        }
        // Now we know exact size of the query execution result

        // Read query execution result byte-by-byte
        let mut result_bytes = vec![0; result_size as usize];
        for i in 4..(result_size + 4) {
            let ptr = result_ptr + i as i32;
            let b = ffi::load(ptr);
            result_bytes[i as usize - 4] = b;
        }

        // Deallocate query result
        ffi::deallocate(result_ptr, result_size + 4);

        // Decode query result to a utf8 string
        let result_str = std::str::from_utf8(result_bytes.as_slice());

        // Log if there's an error
        if result_str.is_err() {
            log::error!("unable to decode result from bytes: {:#x?}", result_bytes);
        }
        // Wrap error with a better message, and return Result
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
