use std::str::FromStr;

use crate::api::AppResult;
use crate::database;
use crate::errors::err_msg;
use log;

pub fn create_scheme() -> AppResult<()> {
    Ok(log::info!("creating scheme"))
}

pub fn add_post(msg: String, handle: String) -> AppResult<()> {
    Ok(log::info!("add post {} {}", msg, handle))
}

pub fn get_all_posts() -> AppResult<String> {
    log::info!("get all posts");
    Ok("[]".to_string())
}

pub fn get_posts_by_handle(handle: String) -> AppResult<String> {
    log::info!("get all posts by handle {}", handle);
    Ok("[]".to_string())
}

pub fn get_posts_count() -> AppResult<i32> {
    log::info!("get posts count");
    Ok(0)
}
