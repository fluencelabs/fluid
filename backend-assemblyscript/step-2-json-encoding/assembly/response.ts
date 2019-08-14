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
    numberOfTwits: i32;
    constructor(numberOfTwits: i32) {
        super();
        this.numberOfTwits = numberOfTwits;
    }

    serialize(): string {
        let encoder = new JSONEncoder();
        encoder.pushObject(null);
        encoder.setString("action", "Post");
        encoder.setInteger("number_of_twits", this.numberOfTwits);
        encoder.popObject();

        return encoder.toString();
    }
}

export class FetchResponse extends Response {
    messageList: Array<string>;

    constructor(messageList: Array<string>) {
        super();
        this.messageList = messageList;
    }

    serialize(): string {
        let encoder = new JSONEncoder();
        encoder.pushObject(null);
        encoder.setString("action", "Fetch");
        encoder.pushArray("msg_list");
        for (let i = 0; i < this.messageList.length; i++) {
            let message = this.messageList[i];
            encoder.pushObject(null);
            encoder.setString("msg", message);
            encoder.popObject();
        }
        encoder.popArray();
        encoder.popObject();

        return encoder.toString();
    }
}
