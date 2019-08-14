use fluence::sdk::*;
use log::info;

fn init() {
    logger::WasmLogger::init_with_level(log::Level::Info).unwrap();
}

#[invocation_handler(init_fn = init)]
fn azaza(arg: String) -> String {
    println!("Hello, world!");

    let query = "CREATE VIRTUAL TABLE users USING FTS5(body)";
    unsafe {
        let bytes = query.as_bytes();
        let query_ptr = allocate(bytes.len());
        for (i, byte) in bytes.iter().enumerate() {
            let ptr = query_ptr as usize + 8*i;
            store(ptr, *byte);
        }

        let result_ptr = invoke(query_ptr, bytes.len());

        let mut result_size = 0;
        for i in 0u8..4u8 {
            let ptr = result_ptr as usize + 8*i as usize;
            let b = load(ptr);
            result_size = result_size | (b >> 8*i)
        }

        let mut result_bytes = vec![0; result_size as usize];
        for i in 0u8..result_size {
            let ptr = result_ptr as usize + 8*i as usize;
            let b = load(ptr);
            result_bytes[i as usize] = b;
        }

        let result_str = std::str::from_utf8(result_bytes.as_slice());
        if result_str.is_err() {
            info!("unable to decode result from result_bytes: {:?}", result_bytes);
        }

        info!("result is {:?}", result_str);

        result_str.expect("unable to decode result").to_string()
    }
}

#[link(wasm_import_module = "sqlite")]
extern "C" {
    fn allocate(size: usize) -> i32;
    fn deallocate(ptr: i32, size: usize);
    fn invoke(ptr: i32, size: usize) -> i32;
    fn store(ptr: usize, byte: u8);
    fn load(ptr: usize) -> u8;
}