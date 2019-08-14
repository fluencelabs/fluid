use crate::errors::{err_msg, Error};
use serde::{Deserialize, Serialize};

pub type AppResult<T> = ::std::result::Result<T, Box<Error>>;

#[derive(Deserialize)]
#[serde(tag = "action")]
pub enum Request {
    Post { msg: String, handle: String },
    Fetch { handle: Option<String> },
}

// TODO: remove Post, used only to workaround Response.Post serialization limitation
#[derive(Serialize, Deserialize, Debug)]
pub struct Post {
    msg: String,
    handle: String,
}

#[derive(Serialize, Debug)]
#[serde(untagged)]
pub enum Response {
    Post { count: i32 },
    Fetch { posts: Vec<Post> },
    Error { error: String },
}

pub fn parse(s: String) -> AppResult<Request> {
    serde_json::from_str(s.as_str())
        .map_err(|e| err_msg(&format!("unable to parse json request from {}: {}", s, e)))
}

pub fn serialize(response: &Response) -> String {
    serde_json::to_string_pretty(response)
        .unwrap_or(format!("Unable to serialize response {:?}", response))
}
