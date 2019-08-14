use fluence::sdk::*;
use log::info;

fn init() {
    logger::WasmLogger::init_with_level(log::Level::Info).unwrap();
}

#[invocation_handler(init_fn = init)]
fn azaza(_arg: String) -> String {
    println!("Hello, world!");
    info!("hello");

    let query = "CREATE VIRTUAL TABLE users USING FTS5(body)";
    unsafe {
        let bytes = query.as_bytes();
        let query_ptr = ffi::allocate(bytes.len());
        info!("allocated");

        for (i, byte) in bytes.iter().enumerate() {
            info!("will store {} {}", i, *byte);
            let ptr = query_ptr + i as i32;
            ffi::store(ptr, *byte);
        }
        info!("stored");

        let result_ptr = ffi::invoke(query_ptr, bytes.len());
        info!("invoked");

        let mut result_size = 0;
        for i in 0u8..4u8 {
            let ptr = result_ptr + i as i32;
            let b = ffi::load(ptr);
            result_size = result_size | (b >> 8*i)
        }
        info!("loaded");

        let mut result_bytes = vec![0; result_size as usize];
        for i in 0u8..result_size {
            let ptr = result_ptr + i as i32;
            let b = ffi::load(ptr);
            result_bytes[i as usize] = b;
        }
        info!("parsed to bytes");

        let result_str = std::str::from_utf8(result_bytes.as_slice());
        if result_str.is_err() {
            info!("unable to decode result from result_bytes: {:?}", result_bytes);
        }

        info!("result is {:?}", result_str);

        result_str.expect("unable to decode result").to_string()
    }
}

pub mod ffi {
    #[link(wasm_import_module = "sqlite")]
    extern "C" {
        pub fn allocate(size: usize) -> i32;
        pub fn deallocate(ptr: i32, size: usize);
        pub fn invoke(ptr: i32, size: usize) -> i32;
        pub fn store(ptr: i32, byte: u8);
        pub fn load(ptr: i32) -> u8;
    }
}