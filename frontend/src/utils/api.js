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
            return {
                messages: posts.map((p) => {
                    return {
                        text: p.msg,
                        name: p.username
                    }
                })
            }
        });
}

export function saveMessage(message) {
    let request = {
        action: "Post",
        msg: message.text,
        username: message.name
    };
    return session.requestAsync(request).then(() => message);
}
