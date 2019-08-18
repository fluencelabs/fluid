use fluence::sdk::*;

pub mod database;
pub mod errors;

use crate::database;

fn init() {
    logger::WasmLogger::init_with_level(log::Level::Info).unwrap();
}

#[invocation_handler(init_fn = init, side_modules = sqlite)]
fn run(nickname: String) -> String {
    // Create table for messages storage
    database::query("CREATE TABLE messages(message text, username text)")
        .expect("error on CREATE TABLE");

    // Insert message 'Hello, username!' using `nickname` as author's username
    database::query(
        format!(
            r#"INSERT INTO messages VALUES("{}","{}")"#,
            "Hello, username!", nickname
        )
        .as_str(),
    )
    .expect("error on INSERT INTO");

    // Get all messages
    let messages = database::query("SELECT * FROM messages").expect("error on SELECT *");
    log::info!("messages: {:?}", messages);

    // Get all messages as JSON via SQLite's JSON extension
    database::query(
        "SELECT json_group_array(
            json_object('message', message, 'username', username)
        ) AS json_result FROM (SELECT * FROM messages)",
    )
    .expect("error on SELECT as json")
}
