import {log} from "../node_modules/assemblyscript-sdk/assembly/logger";

export function createScheme(): void {
    log("create scheme");
}
export function addMessage(msg: string, username: string): void {
    log("add message");
}
export function getMessages(username: string | null): string {
    log("get messages");
    return "[]";
}
export function getPostsCount(): u32 {
    log("get posts count");
    return 0;
}
