use log;

use crate::errors::AppResult;

pub fn create_scheme() -> AppResult<()> {
    Ok(log::info!("creating scheme"))
}

pub fn add_post(message: String, username: String) -> AppResult<()> {
    Ok(log::info!("add post {} {}", message, username))
}

pub fn get_all_posts(offset: u32, count: u32) -> AppResult<String> {
    log::info!("get all posts");
    Ok("[]".to_string())
}

pub fn get_posts_by_username(username: String, offset: u32, count: u32) -> AppResult<String> {
    log::info!("get all posts by username {}", username);
    Ok("[]".to_string())
}

pub fn get_posts_count() -> AppResult<i32> {
    log::info!("get posts count");
    Ok(0)
}
