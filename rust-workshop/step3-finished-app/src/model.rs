use std::str::FromStr;

use crate::api::AppResult;
use crate::database;
use crate::errors::err_msg;

pub fn create_scheme() -> AppResult<()> {
    database::query("CREATE TABLE messages(msg text, username text)".to_string())
        .map_err(|e| err_msg(&format!("Error creating table messages: {}", e)))
        .map(|_| ())
}

pub fn add_post(msg: String, username: String) -> AppResult<()> {
    database::query(format!(
        r#"INSERT INTO messages VALUES("{}","{}")"#,
        msg, username
    ))
    .map_err(|e| {
        err_msg(&format!(
            "Error inserting post {} by {}: {}",
            msg, username, e
        ))
    })
    .map(|_| ())
}

pub fn get_all_posts() -> AppResult<String> {
    database::query(
        "SELECT json_group_array(
            json_object('msg', msg, 'username', username)
        ) AS json_result FROM (SELECT * FROM messages)"
            .to_string(),
    )
    .map_err(|e| err_msg(&format!("Error retrieving posts: {}", e)))
}

pub fn get_posts_by_handle(username: String) -> AppResult<String> {
    database::query(format!(
        "SELECT json_group_array(
            json_object('msg', msg, 'username', username)
        ) AS json_result FROM (SELECT * FROM messages where username = '{}')",
        username
    ))
    .map_err(|e| err_msg(&format!("Error retrieving posts: {}", e)))
}

pub fn get_posts_count() -> AppResult<i32> {
    let result = database::query("SELECT COUNT(*) from messages".to_string())
        .map_err(|e| err_msg(&format!("Error retrieving posts count: {}", e)))?;

    i32::from_str(result.as_str()).map_err(|e| {
        err_msg(&format!(
            "Can't parse {} to i32 in get_posts_count: {}",
            result, e
        ))
    })
}
