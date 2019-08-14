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

    public readonly msg: string;
    public readonly handle: string;

    constructor(msg: string, handle: string) {
        super();
        this.msg = msg;
        this.handle = handle;
        this.action = Action.Post;
    }
}

export class FetchRequest extends Request {
    public readonly filter_handle: string | null;

    constructor(filter_handle: string | null) {
        super();
        this.action = Action.Fetch;
        this.filter_handle = filter_handle;
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
    let jsonHandler = new RequestJSONEventsHandler();
    let decoder = new JSONDecoder<RequestJSONEventsHandler>(jsonHandler);

    let bytes = string2Bytes(input);

    decoder.deserialize(bytes);

    let action = jsonHandler.action;

    let request: Request;

    if (action == "Fetch") {
        request = new FetchRequest(jsonHandler.filter_handle);
    } else if (action == "Post") {
        request = new PostRequest(jsonHandler.msg, jsonHandler.handle)
    } else {
        request = new UnknownRequest()
    }

    return request;
}

class RequestJSONEventsHandler extends JSONHandler {

    public action: string;
    public msg: string;
    public handle: string;
    public filter_handle: string | null;

    setString(name: string, value: string): void {

        if (name == "action") {
            this.action = value;
        } else if (name == "msg") {
            this.msg = value;
        } else if (name == "handle") {
            this.handle = value;
        } else if (name == "filter_handle") {
            this.filter_handle = value;
        }
        // json scheme is not strict, so we won't throw an error on excess fields
    }
}
