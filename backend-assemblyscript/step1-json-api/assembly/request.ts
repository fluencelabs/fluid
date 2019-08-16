import {JSONDecoder, JSONHandler} from "../node_modules/assemblyscript-json/assembly/decoder";

export enum Action {
    Post,
    Fetch,
    Unknown
}

export abstract class Request {
    public action: Action = Action.Unknown;
}

export class PostRequest extends Request {

    public readonly msg: string;
    public readonly username: string;

    constructor(msg: string, username: string) {
        super();
        this.msg = msg;
        this.username = username;
        this.action = Action.Post;
    }
}

export class FetchRequest extends Request {
    constructor() {
        super();
        this.action = Action.Fetch;
    }
}

export class UnknownRequest extends Request {
    constructor() {
        super();
        this.action = Action.Unknown;
    }
}

function string2Bytes(str: string): Uint8Array {
    return Uint8Array.wrap(String.UTF8.encode(str));
}

export function decode(input: string): Request {
    let jsonHandler = new RequestJSONEventsHandler();
    let decoder = new JSONDecoder<RequestJSONEventsHandler>(jsonHandler);

    let bytes = string2Bytes(input);

    decoder.deserialize(bytes);

    let action = jsonHandler.action;

    let request: Request;

    if (action == "Fetch") {
        request = new FetchRequest();
    } else if (action == "Post") {
        request = new PostRequest(jsonHandler.msg, jsonHandler.username)
    } else {
        request = new UnknownRequest()
    }

    return request;
}

class RequestJSONEventsHandler extends JSONHandler {

    public action: string;
    public msg: string;
    public username: string;

    setString(name: string, value: string): void {

        if (name == "action") {
            this.action = value;
        } else if (name == "msg") {
            this.msg = value;
        } else if (name == "username") {
            this.username = value;
        }
        // json scheme is not strict, so we won't throw an error on excess fields
    }
}
