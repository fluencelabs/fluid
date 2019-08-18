import {JSONDecoder, JSONHandler} from "../node_modules/assemblyscript-json/assembly/decoder";

export enum Action {
    Post,
    Fetch,
    Unknown
    // Error
}

export abstract class Request {
    public action: Action = Action.Unknown;
}

export class PostRequest extends Request {

    public readonly message: string;
    public readonly username: string;

    constructor(message: string, username: string) {
        super();
        this.message = message;
        this.username = username;
        this.action = Action.Post;
    }
}

export class FetchRequest extends Request {
    public readonly username: string | null;
    public readonly offset: u32;
    public readonly count: u32;

    constructor(username: string | null, offset: u32, count: u32) {
        super();
        this.action = Action.Fetch;
        this.username = username;
        this.offset = offset;
        this.count = count;
    }
}

export class UnknownRequest extends Request {
    constructor() {
        super();
        this.action = Action.Unknown;
    }
}

export function string2Bytes(str: string): Uint8Array {
    return Uint8Array.wrap(String.UTF8.encode(str));
}

export function decode(input: string): Request {
    let json = new RequestJSONEventsHandler();
    let decoder = new JSONDecoder<RequestJSONEventsHandler>(json);

    let bytes = string2Bytes(input);

    decoder.deserialize(bytes);

    let action = json.action;

    let request: Request;

    if (action == "Fetch") {
        request = new FetchRequest(json.filter_handle, json.offset, json.count);
    } else if (action == "Post") {
        request = new PostRequest(json.message, json.username)
    } else {
        request = new UnknownRequest()
    }

    return request;
}

class RequestJSONEventsHandler extends JSONHandler {

    public action: string;
    public message: string;
    public username: string;
    public filter_handle: string | null;
    public offset: u32;
    public count: u32;

    setString(name: string, value: string): void {
        this.offset = 0;
        this.count = 100;

        if (name == "action") {
            this.action = value;
        } else if (name == "message") {
            this.message = value;
        } else if (name == "username") {
            this.username = value;
            this.filter_handle = value;
        } else if (name == "offset") {
            this.offset = U32.parseInt(value);
        } else if (name == "count") {
            this.count = U32.parseInt(value);
        }
        // json scheme is not strict, so we won't throw an error on excess fields
    }
}
