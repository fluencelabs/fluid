use fluence::sdk::*;
use serde_json::value::RawValue;

use api::Request;
use api::Response;

use crate::api::AppResult;
use crate::errors::err_msg;

pub mod api;
pub mod database;
pub mod errors;
pub mod ffi;
pub mod model;

fn init() {
    logger::WasmLogger::init_with_level(log::Level::Info).unwrap();
    model::create_scheme().unwrap();
}

#[invocation_handler(init_fn = init)]
fn run(arg: String) -> String {
    let result = api::parse(arg).and_then(|request| match request {
        Request::Post { msg, handle } => add_post(msg, handle),
        Request::Fetch { handle } => fetch_posts(handle),
    });

    let result = match result {
        Ok(good) => good,
        Err(error) => Response::Error {
            error: error.to_string(),
        },
    };

    api::serialize(&result)
}

fn add_post(msg: String, handle: String) -> AppResult<Response> {
    model::add_post(msg, handle)?;
    let count = model::get_posts_count()?;
    Ok(Response::Post { count })
}

fn fetch_posts(handle: Option<String>) -> AppResult<Response> {
    let posts_str = match handle {
        Some(h) => model::get_posts_by_handle(h)?,
        None => model::get_all_posts()?,
    };

    let raw = RawValue::from_string(posts_str)
        .map_err(|e| err_msg(&format!("Can't create RawValue: {}", e)))?;

    Ok(Response::Fetch { posts: raw })
}
