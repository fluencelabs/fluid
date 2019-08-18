use fluence::sdk::*;
use serde_json::value::RawValue;

use api::Request;
use api::Response;

use crate::errors::err_msg;
use crate::errors::AppResult;

pub mod api;
pub mod errors;
pub mod model;

fn init() {
    logger::WasmLogger::init_with_level(log::Level::Info).unwrap();
    model::create_scheme().unwrap();
}

#[invocation_handler(init_fn = init)]
fn run(arg: String) -> String {
    // Parse and username JSON request
    let result = api::parse(arg).and_then(|request| match request {
        Request::Post { message, username } => add_post(message, username),
        Request::Fetch {
            username,
            offset,
            count,
        } => fetch_posts(username, offset, count),
    });

    let result = match result {
        Ok(good) => good,
        Err(error) => Response::Error {
            error: error.to_string(),
        },
    };

    // Serialize response to JSON
    api::serialize(&result)
}

fn add_post(message: String, username: String) -> AppResult<Response> {
    // Store post
    model::add_post(message, username)?;
    // Get total number of posts
    let count = model::get_posts_count()?;

    Ok(Response::Post { count })
}

fn fetch_posts(
    username: Option<String>,
    offset: Option<u32>,
    count: Option<u32>,
) -> AppResult<Response> {
    let count = count.unwrap_or(0);
    let offset = offset.unwrap_or(0);
    let posts_str = match username {
        // Get all posts if no filter username was passed
        None => model::get_all_posts(count, offset)?,
        // Or get only posts from specified author
        Some(h) => model::get_posts_by_username(h, count, offset)?,
    };

    // Some Rust-specific detail to play nice with serialization, doesn't matter
    let raw = RawValue::from_string(posts_str)
        .map_err(|e| err_msg(&format!("Can't create RawValue: {}", e)))?;

    Ok(Response::Fetch { posts: raw })
}
