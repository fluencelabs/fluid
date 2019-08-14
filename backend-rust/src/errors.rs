use std::error::Error;

pub fn err_msg(s: &str) -> Box<dyn Error> {
    Error(s.to_string()).into()
}
