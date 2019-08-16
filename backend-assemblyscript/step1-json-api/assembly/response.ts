import {JSONEncoder} from "../node_modules/assemblyscript-json/assembly/encoder";

export abstract class Response {
    serialize(): string {
        unreachable();
        return "";
    };
}

export class Message {
    message: string;
    username: string;

    constructor(message: string, username: string) {
        this.message = message;
        this.username = username;
    }
}

export class UnknownResponse extends Response {
    constructor() {
        super();
    }

    serialize(): string {
        let encoder = new JSONEncoder();
        encoder.pushObject(null);
        encoder.setString("action", "Unknown");
        encoder.setString("message", "cannot username request");
        encoder.popObject();

        return encoder.toString();
    }
}

export class PostResponse extends Response {
    count: u32;
    constructor(count: u32) {
        super();
        this.count = count;
    }

    serialize(): string {
        let encoder = new JSONEncoder();
        encoder.pushObject(null);
        encoder.setInteger("count", this.count);
        encoder.popObject();

        return encoder.toString();
    }
}

export class FetchResponse extends Response {
    posts: Array<Message>;

    constructor(posts: Array<Message>) {
        super();
        this.posts = posts;
    }

    serialize(): string {
        let encoder = new JSONEncoder();
        encoder.pushObject(null);
        encoder.pushArray("posts");
        for (let i = 0; i < this.posts.length; i++) {
            let twit = this.posts[i];
            encoder.pushObject(null);
            encoder.setString("message", twit.message);
            encoder.setString("username", twit.username);
            encoder.popObject();
        }
        encoder.popArray();
        encoder.popObject();

        return encoder.toString();
    }
}
