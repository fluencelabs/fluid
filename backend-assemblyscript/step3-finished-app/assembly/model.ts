import {query} from "../node_modules/db-connector/assembly/sqlite"

export function createScheme(): void {
    let request = `CREATE TABLE messages(msg text, username text)`;
    query(request);
}

export function addMessage(msg: string, username: string): void {
    let request = `INSERT INTO messages VALUES("` + msg + `", "` + username + `")`;
    query(request);
}

export function getMessages(username: string | null): string {
    if (username) {

        let request =
            `SELECT json_group_array(
                json_object('msg', msg, 'username', username)
            ) AS json_result FROM 
                (SELECT * FROM messages WHERE username = "` + username + `")`;
        return query(request);
    } else {
        let request =
            `SELECT json_group_array(
                json_object('msg', msg, 'username', username)
            ) AS json_result FROM (SELECT * FROM messages)`;
        return query(request);
    }
}

export function getPostsCount(): u32 {
    let request = `SELECT COUNT(*) from messages`;
    let result = query(request);
    return U32.parseInt(result);
}
