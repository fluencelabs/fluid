import {log} from "../node_modules/assemblyscript-sdk/assembly/logger";
import {query} from "../node_modules/db-connector/assembly/sqlite"

function doRequest(request: string): string {

    log("[doRequest] Request: " + request);

    let result = query(request);

    log("[doRequest] Result: ");
    log("[doRequest] " + result);

    return result;
}

export function initTables(): void {
    let request = "CREATE TABLE messages(msg text, handle text)";
    let resp = doRequest(request);
}

export function addMessage(msg: string, handle: string): void {
    let request = "INSERT INTO messages VALUES(\"" + msg + "\", \"" + handle + "\")";
    doRequest(request);
}

export function getMessages(handle: string | null): string {
    if (handle) {
        let request = 'SELECT json_group_array(json_object("msg", msg, "handle", handle)) AS json_result FROM (SELECT * FROM messages WHERE handle = "' + handle + '")';
        return doRequest(request);
    } else {
        let request = "SELECT json_group_array(json_object('msg', msg, 'handle', handle)) AS json_result FROM (SELECT * FROM messages)";
        return doRequest(request);
    }
}

export function getPostsCount(): u32 {
    let request = "SELECT COUNT(*) from messages";
    let result = doRequest(request);
    return U32.parseInt(result);
}
