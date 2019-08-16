use fluence::sdk::*;

pub mod database;
pub mod errors;
pub mod ffi;

fn init() {
    logger::WasmLogger::init_with_level(log::Level::Info).unwrap();
}

#[invocation_handler(init_fn = init)]
fn run(nickname: String) -> String {
    // Create table for messages storage
    database::query("CREATE TABLE messages(msg text, username text)".to_string());

    // Insert message 'Hello, username!' using `nickname` as author's username
    database::query(format!(
        r#"INSERT INTO messages VALUES("{}","{}")"#,
        "Hello, username!", nickname
    ));

    // Get all messages
    let messages = database::query("SELECT * FROM messages".to_string());
    log::info!("messages: {}", messages);

    // Get all messages as JSON via SQLite's JSON extension
    database::query(
        "SELECT json_group_array(
            json_object('msg', msg, 'username', username)
        ) AS json_result FROM (SELECT * FROM messages)"
            .to_string(),
    )
}
