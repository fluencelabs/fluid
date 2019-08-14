use crate::api::AppResult;
use fluence::sdk::*;

pub mod api;
pub mod database;
pub mod errors;
pub mod ffi;
pub mod model;

use api::Request;
use api::Response;

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
        Err(error) => Response::Error { error },
    };

    api::serialize(result)
}

fn add_post(msg: String, handle: String) -> AppResult<Response::Post> {
    model::add_post(msg, handle)?;
    let count = model::get_posts_count()?;
    Response::Post { count }
}

fn fetch_posts(handle: String) -> AppResult<Response::Fetch> {
    // TODO: filter posts by handle
    let posts = model::get_posts()?;
    Response::Fetch { posts }
}
