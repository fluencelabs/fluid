import {JSONEncoder} from "../node_modules/assemblyscript-json/assembly/encoder";

export abstract class Response {
    serialize(): string {
        unreachable();
        return "";
    };
}

export class Twit {
    msg: string;
    handle: string;

    constructor(msg: string, handle: string) {
        this.msg = msg;
        this.handle = handle;
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
        encoder.setString("msg", "cannot handle request");
        encoder.popObject();

        return encoder.toString();
    }
}

export class PostResponse extends Response {
    msgCount: i32;
    constructor(msgCount: i32) {
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
    posts: Array<string>;

    constructor(posts: Array<string>) {
        super();
        this.posts = posts;
    }

    serialize(): string {
        let encoder = new JSONEncoder();
        encoder.pushObject(null);
        encoder.setString("action", "Fetch");
        encoder.pushArray("posts");
        for (let i = 0; i < this.posts.length; i++) {
            let message = this.posts[i];
            encoder.pushObject(null);
            encoder.setString("msg", message);
            encoder.popObject();
        }
        encoder.popArray();
        encoder.popObject();

        return encoder.toString();
    }
}
