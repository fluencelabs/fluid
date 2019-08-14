
import {handler} from "./main";
import {loggedStringHandler} from "../node_modules/assemblyscript-sdk/assembly/index";
import {log} from "../node_modules/assemblyscript-sdk/assembly/logger";

// VM wrapper will put requests to memory through this function
export function allocate(size: usize) :i32 {
  return __alloc(size, 0);
}

// VM wrapper will deallocate response from memory after handling it
export function deallocate(ptr: i32, size: usize): void {
  __reset();
}

// VM wrapper calls this function with a pointer on request in memory.
// Returns pointer on a response.
export function invoke(ptr: i32, size: i32): i32 {
    // this function will parse a request as a string and return result string as a pointer in memory
    // you can look on other functions in 'assemblyscript-sdk' library to handle own types of requests and responses
    return loggedStringHandler(ptr, size, handler, log);
}
