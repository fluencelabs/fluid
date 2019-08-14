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
