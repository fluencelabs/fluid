import {
    _getMessages,
    _saveMessage,
} from './_DATA.js'

import * as fluence from "fluence";

let session = fluence.directConnect("localhost", 30000, 1);

export function getMessages () {
    let request = {
        action: "Fetch"
    };
    return session.request(JSON.stringify(request))
        .then((r) => r.asString())
        .then((r) => {
            let posts = JSON.parse(r);
            console.log("posts");
            console.log(posts);
            let list = posts.map((p) => {
                return {
                    text: p.msg,
                    name: p.username
                }
            });
            console.log(list);
            return list;
        });
}

export function saveMessage(message) {
    console.log("save message");
    console.log(message);
    let request = {
        action: "Post",
        msg: message.text,
        username: message.name
    };
    return session.requestAsync(JSON.stringify(request)).then(() => message);
}
