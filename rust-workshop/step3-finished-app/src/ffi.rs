// Description of inter-module communication
//
// Allows fluid module to call methods from sqlite module

#[link(wasm_import_module = "sqlite")]
extern "C" {
    // Allocate chunk of SQLite memory, and return a pointer to that memory
    #[link_name = "sqlite_allocate"]
    pub fn allocate(size: usize) -> i32;

    // Deallocate chunk of memory after it's not used anymore
    #[link_name = "sqlite_deallocate"]
    pub fn deallocate(ptr: i32, size: usize);

    // Put 1 byte at ptr location in SQLite memory
    #[link_name = "sqlite_store"]
    pub fn store(ptr: i32, byte: u8);

    // Read 1 byte from ptr location of SQLite memory
    #[link_name = "sqlite_load"]
    pub fn load(ptr: i32) -> u8;

    // Call SQLite's invocation handler with data specified by pointer and size
    #[link_name = "sqlite_invoke"]
    pub fn invoke(ptr: i32, size: usize) -> i32;
}
