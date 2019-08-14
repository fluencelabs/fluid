import {log} from "../node_modules/assemblyscript-sdk/assembly/logger";
import {query} from "../node_modules/db-connector/assembly/index"

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

export function getMessages(): string {
    let request = "SELECT * FROM messages";
    let result = doRequest(request);
    return result;
}
