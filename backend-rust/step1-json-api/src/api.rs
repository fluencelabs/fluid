use crate::errors::{err_msg, Error};
use serde::{Deserialize, Serialize};
use serde_json::value::RawValue;

pub type AppResult<T> = ::std::result::Result<T, Box<Error>>;

#[derive(Deserialize)]
#[serde(tag = "action")]
pub enum Request {
    Post { message: String, username: String },
    Fetch { username: Option<String> },
}

#[derive(Serialize, Debug)]
#[serde(untagged)]
pub enum Response {
    Post { count: i32 },
    Fetch { posts: Box<RawValue> },
    Error { error: String },
}

pub fn parse(s: String) -> AppResult<Request> {
    serde_json::from_str(s.as_str())
        .map_err(|e| err_msg(&format!("unable to parse json request from {}: {}", s, e)))
}

pub fn serialize(response: &Response) -> String {
    serde_json::to_string(response)
        .unwrap_or(format!("Unable to serialize response {:?}", response))
}
