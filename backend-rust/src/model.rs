use crate::database;

use crate::api::AppResult;
use crate::errors::err_msg;
use std::convert::TryInto;
use std::fmt;
use std::str;
use std::vec::Vec;

pub fn create_scheme() -> AppResult<()> {
    database::query("CREATE TABLE messages(msg text, handle text)".to_string())
        .map_err(|e| err_msg(&format!("Error creating table messages: {}", e)))
}

pub fn add_post(msg: String, handle: String) -> AppResult<()> {
    database::query(format!("""INSERT INTO messages VALUES("{}","{}")""", msg, handle)).map_err(
        |e| {
            err_msg(&format!(
                "Error inserting post {} by {}: {}",
                msg, handle, e
            ))
        },
    )
}

pub fn get_posts() -> AppResult<String> {
    database::query(
        "SELECT json_group_array(
            json_object('msg', msg, 'handle', handle)
        ) AS json_result FROM (SELECT * FROM messages)"
            .to_string(),
    )
    .map_err(|e| err_msg(&format!("Error retrieving posts: {}", e)))
}

pub fn get_posts_count() -> AppResult<i32> {
    database::query("SELECT COUNT(*) from messages".to_string())?
        .try_into()
        .map_err(|e| err_msg(&format!("Error retrieving posts count: {}", e)))
}
