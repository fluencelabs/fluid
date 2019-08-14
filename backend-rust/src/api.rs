use serde::{Deserialize, Serialize};

use std::error::Error;
pub type AppResult<T> = ::std::result::Result<T, Box<dyn Error>>;

#[derive(Deserialize)]
#[serde(tag = "action")]
pub enum Request {
    Post { msg: String, handle: String },
    Fetch { handle: String },
}

#[derive(Serialize, Debug)]
#[serde(untagged)]
pub enum Response {
    Post { count: i32 },
    Fetch { posts: String },
    Error { error: String },
}

pub fn parse(s: String) -> AppResult<Request> {
    serde_json::from_str(s.as_str())
}

pub fn serialize(response: Response) -> String {
    serde_json::to_string_pretty(response)
        .or_else(format!("Unable to serialize response {:?}", response))
}
