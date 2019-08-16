use std::str::FromStr;

use crate::errors::err_msg;
use crate::errors::AppResult;
use crate::utils::sqlite_call_wrapper;

pub fn create_scheme() -> AppResult<()> {
    sqlite_call_wrapper("CREATE TABLE messages(message text, username text)").map(drop)
}

pub fn add_post(message: String, username: String) -> AppResult<()> {
    sqlite_call_wrapper(
        format!(
            r#"INSERT INTO messages VALUES("{}","{}")"#,
            message, username
        )
        .as_str(),
    )
    .map(drop)
}

pub fn get_all_posts() -> AppResult<String> {
    sqlite_call_wrapper(
        "SELECT json_group_array(
            json_object('message', message, 'username', username)
        ) AS json_result FROM (SELECT * FROM messages)",
    )
}

pub fn get_posts_by_username(username: String) -> AppResult<String> {
    sqlite_call_wrapper(
        format!(
            "SELECT json_group_array(
            json_object('message', message, 'username', username)
            ) AS json_result FROM (SELECT * FROM messages where username = '{}')",
            username
        )
        .as_str(),
    )
}

pub fn get_posts_count() -> AppResult<i32> {
    let result = sqlite_call_wrapper("SELECT COUNT(*) from messages")?;

    i32::from_str(result.as_str()).map_err(|e| {
        err_msg(&format!(
            "Can't parse {} to i32 in get_posts_count: {}",
            result, e
        ))
    })
}
