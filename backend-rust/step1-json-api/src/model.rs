use log;

use crate::errors::AppResult;

pub fn create_scheme() -> AppResult<()> {
    Ok(log::info!("creating scheme"))
}

pub fn add_post(msg: String, username: String) -> AppResult<()> {
    Ok(log::info!("add post {} {}", msg, username))
}

pub fn get_all_posts() -> AppResult<String> {
    log::info!("get all posts");
    Ok("[]".to_string())
}

pub fn get_posts_by_username(username: String) -> AppResult<String> {
    log::info!("get all posts by username {}", username);
    Ok("[]".to_string())
}

pub fn get_posts_count() -> AppResult<i32> {
    log::info!("get posts count");
    Ok(0)
}
