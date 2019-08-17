import * as fluence from "fluence";

let session = fluence.directConnect("localhost", 30000, 1);

export function getMessages () {
    let request = {
        action: "Fetch"
    };
    return session.request(JSON.stringify(request))
        .then((r) => r.asString())
        .then((r) => {
            let response = JSON.parse(r);
            return response.posts.map((p) => {
                return {
                    text: p.message,
                    name: p.username
                }
            }).reverse();
        });
}

export function saveMessage(message) {
    let request = {
        action: "Post",
        message: message.text,
        username: message.name
    };
    return session.requestAsync(JSON.stringify(request)).then(() => message);
}
