use std::fmt;

#[derive(Debug)]
pub struct Error(String);

impl std::error::Error for Error {}

impl fmt::Display for Error {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}", self.0)
    }
}

pub fn err_msg(s: &str) -> Box<Error> {
    Error(s.to_string()).into()
}

pub type AppResult<T> = ::std::result::Result<T, Box<Error>>;
