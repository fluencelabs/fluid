import {JSONEncoder} from "../node_modules/assemblyscript-json/assembly/encoder";
import {JSONDecoder, JSONHandler} from "../node_modules/assemblyscript-json/assembly/decoder";
import {string2Bytes} from "./request";

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

class PostsJSONEventsHandler extends JSONHandler {

    public messages: Array<Message> = new Array<Message>();
    message: string | null;
    username: string | null;

    setString(name: string, value: string): void {

        if (name == "message") {
            this.message = value;
        } else if (name == "username") {
            this.username = value;
        }
    }

    pushObject(name: string): bool {
        this.message = null;
        this.username = null;
        return true;
    }

    popObject(): void {
        let message = new Message(this.message as string, this.username as string);
        this.messages.push(message)
    }
}

 export function decodePosts(input: string): FetchResponse {
    let jsonHandler = new PostsJSONEventsHandler();
    let decoder = new JSONDecoder<PostsJSONEventsHandler>(jsonHandler);

    let bytes = string2Bytes(input);

    decoder.deserialize(bytes);

    let messages = jsonHandler.messages;

    return new FetchResponse(messages);
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
