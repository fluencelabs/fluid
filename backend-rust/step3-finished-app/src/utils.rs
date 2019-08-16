use crate::errors::{err_msg, AppResult};
use crate::sqlite;

pub fn sqlite_call_wrapper(bytes: &str) -> AppResult<String> {
    let response = sqlite::call(bytes.as_bytes());

    // Decode query result to a utf8 string
    let result_str = std::str::from_utf8(&response);

    // Log if there's an error
    if result_str.is_err() {
        log::error!("unable to decode result from bytes: {:#x?}", bytes);
    }

    // Wrap error with a better message, and return Result
    result_str
        .map_err(|e| {
            err_msg(&format!(
                "unable to decode result from bytes {:#x?}: {}",
                bytes, e
            ))
        })
        .map(|s| s.to_string())
}
