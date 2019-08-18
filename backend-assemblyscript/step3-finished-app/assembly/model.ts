import {query} from "../node_modules/db-connector/assembly/sqlite"

export function createScheme(): void {
    let request = `CREATE TABLE messages(message text, username text)`;
    query(request);
}

export function addMessage(message: string, username: string): void {
    let request = `INSERT INTO messages VALUES("` + message + `", "` + username + `")`;
    query(request);
}

export function getMessages(username: string | null, offset: u32, count: u32): string {
    let limitClause = ` LIMIT ` + count.toString() + ` OFFSET ` + offset.toString() + ` `;
    if (username) {
        let whereClause = ` WHERE username = "` + username + `" `;
        let request =
            `SELECT json_group_array(
                json_object('message', message, 'username', username)
            ) AS json_result FROM 
                (SELECT * FROM messages` + whereClause + limitClause + `)`;
        return query(request);
    } else {
        let request =
            `SELECT json_group_array(
                json_object('message', message, 'username', username)
            ) AS json_result FROM (SELECT * FROM messages` + limitClause + `)`;
        return query(request);
    }
}

export function getPostsCount(): u32 {
    let request = `SELECT COUNT(*) from messages`;
    let result = query(request);
    return U32.parseInt(result);
}
