import {log} from "../node_modules/assemblyscript-sdk/assembly/logger";
import {query} from "../node_modules/db-connector/assembly/sqlite"

// main handler for an application
export function handler(username: string): string {
    // Create table for messages storage
    query(`CREATE TABLE messages(message text, username text)`);

    // Insert message 'Hello, username!' using `username` as author's username
    query(`INSERT INTO messages VALUES("Hello, username!","` + username + `")`);

    // Get all messages
    let messages = query(`SELECT * FROM messages`);
    log("messages: " + messages);

    // Get all messages as JSON via SQLite's JSON extension
    return query(
        `SELECT json_group_array(
            json_object('message', message, 'username', username)
        ) AS json_result FROM (SELECT * FROM messages)`
    )
}
