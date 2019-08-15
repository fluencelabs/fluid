use fluence::sdk::*;
use log;

// Initialize logger
fn init() {
    logger::WasmLogger::init_with_level(log::Level::Info).unwrap();
}

#[invocation_handler(init_fn = init)]
fn run(arg: String) -> String {
    // Log to console
    log::info!("Hello, {}", arg);

    // Return string back to JS
    format!("Hello, {}", arg)
}
