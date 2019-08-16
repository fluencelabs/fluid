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
    let request = "CREATE TABLE messages(msg text, username text)";
    let resp = doRequest(request);
}

export function addMessage(msg: string, username: string): void {
    let request = "INSERT INTO messages VALUES(\"" + msg + "\", \"" + username + "\")";
    doRequest(request);
}

export function getMessages(username: string | null): string {
    if (username) {
        let request = "SELECT json_group_array(json_object('msg', msg, 'username', username)) AS json_result FROM (SELECT * FROM messages WHERE username = '" + username + "')";
        return doRequest(request);
    } else {
        let request = "SELECT json_group_array(json_object('msg', msg, 'username', username)) AS json_result FROM (SELECT * FROM messages)";
        return doRequest(request);
    }
}

export function getPostsCount(): u32 {
    let request = "SELECT COUNT(*) from messages";
    let result = doRequest(request);
    return U32.parseInt(result);
}
