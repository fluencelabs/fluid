use crate::errors::{err_msg, AppResult};
use crate::sqlite;

pub fn query(query: &str) -> AppResult<String> {
    let response = sqlite::call(query.as_bytes());

    // Add more details to error message
    String::from_utf8(response).map_err(|e| {
        log::error!("unable to decode result from bytes: {:#x?}", bytes);
        err_msg(&format!(
            "unable to decode result from bytes {:#x?}: {}",
            query, e
        ))
    })
}
