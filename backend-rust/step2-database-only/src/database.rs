use crate::errors::{err_msg, AppResult};
use crate::sqlite;

pub fn query(bytes: &str) -> AppResult<String> {
    let response = sqlite::call(bytes.as_bytes());

    // Decode query result to a utf8 string
    String::from_utf8(response).map_err(|e| {
        log::error!("unable to decode result from bytes: {:#x?}", bytes);
        err_msg(&format!(
            "unable to decode result from bytes {:#x?}: {}",
            bytes, e
        ))
    })
}
