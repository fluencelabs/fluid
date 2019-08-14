use fluence::sdk::*;
use log::info;

fn init() {
    logger::WasmLogger::init_with_level(log::Level::Info).unwrap();
}

#[invocation_handler(init_fn = init)]
fn run(arg: String) -> String {
    query(arg)
}

fn query(query: String) -> String {
    info!("executing query: '{}'", query);

    unsafe {
        let bytes = query.as_bytes();
        let query_ptr = ffi::allocate(bytes.len());

        for (i, byte) in bytes.iter().enumerate() {
            let ptr = query_ptr + i as i32;
            ffi::store(ptr, *byte);
        }

        let result_ptr = ffi::invoke(query_ptr, bytes.len());

        let mut result_size = 0;
        for i in 0u8..4u8 {
            let ptr = result_ptr + i as i32;
            let b = ffi::load(ptr);
            result_size = result_size | (b >> 8*i)
        }

        let mut result_bytes = vec![0; result_size as usize];
        for i in 4u8..result_size {
            let ptr = result_ptr + i as i32;
            let b = ffi::load(ptr);
            result_bytes[i as usize - 4] = b;
        }

        let result_str = std::str::from_utf8(result_bytes.as_slice());
        if result_str.is_err() {
            info!("unable to decode result from result_bytes: {:?}", result_bytes);
        }

        result_str.expect("unable to decode result").to_string()
    }
}

pub mod ffi {
    #[link(wasm_import_module = "sqlite")]
    extern "C" {
        #[link_name="sqlite_allocate"]
        pub fn allocate(size: usize) -> i32;
        #[link_name="sqlite_deallocate"]
        pub fn deallocate(ptr: i32, size: usize);
        #[link_name="sqlite_invoke"]
        pub fn invoke(ptr: i32, size: usize) -> i32;
        #[link_name="sqlite_store"]
        pub fn store(ptr: i32, byte: u8);
        #[link_name="sqlite_load"]
        pub fn load(ptr: i32) -> u8;
    }
}