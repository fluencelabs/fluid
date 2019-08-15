use fluence::sdk::*;
use serde_json::value::RawValue;

use api::Request;
use api::Response;

use crate::api::AppResult;
use crate::errors::err_msg;

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
        Request::Fetch { username } => fetch_posts(username),
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

fn add_post(msg: String, username: String) -> AppResult<Response> {
    // Store post
    model::add_post(msg, username)?;
    // Get total number of posts
    let count = model::get_posts_count()?;

    Ok(Response::Post { count })
}

fn fetch_posts(username: Option<String>) -> AppResult<Response> {
    let posts_str = match username {
        // Get all posts if no filter username was passed
        None => model::get_all_posts()?,
        // Or get only posts from specified author
        Some(h) => model::get_posts_by_handle(h)?,
    };

    // Some Rust-specific detail to play nice with serialization, doesn't matter
    let raw = RawValue::from_string(posts_str)
        .map_err(|e| err_msg(&format!("Can't create RawValue: {}", e)))?;

    Ok(Response::Fetch { posts: raw })
}
