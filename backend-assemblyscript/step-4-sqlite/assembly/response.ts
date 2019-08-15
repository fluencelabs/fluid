import {JSONEncoder} from "../node_modules/assemblyscript-json/assembly/encoder";

export abstract class Response {
    serialize(): string {
        unreachable();
        return "";
    };
}

export class Message {
    msg: string;
    username: string;

    constructor(msg: string, username: string) {
        this.msg = msg;
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
        encoder.setString("msg", "cannot username request");
        encoder.popObject();

        return encoder.toString();
    }
}

export class PostResponse extends Response {
    msgCount: u32;
    constructor(msgCount: u32) {
        super();
        this.msgCount = msgCount;
    }

    serialize(): string {
        let encoder = new JSONEncoder();
        encoder.pushObject(null);
        encoder.setString("action", "Post");
        encoder.setInteger("count", this.msgCount);
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
        encoder.setString("action", "Fetch");
        encoder.pushArray("posts");
        for (let i = 0; i < this.posts.length; i++) {
            let twit = this.posts[i];
            encoder.pushObject(null);
            encoder.setString("msg", twit.msg);
            encoder.setString("username", twit.username);
            encoder.popObject();
        }
        encoder.popArray();
        encoder.popObject();

        return encoder.toString();
    }
}
