import * as fluence from "fluence";

let session = fluence.directConnect("localhost", 30000, 1);
window.fluenceSession = session;
window.fluence = fluence;

export async function changeConnection(devnet, appId) {
    if (devnet) {
        fluence.connect("0xeFF91455de6D4CF57C141bD8bF819E5f873c1A01", appId).then((s) => {
            session = s;
            window.fluenceSession = s;
            return s
        })
    } else {
        session = fluence.directConnect("localhost", 30000, 1);
        window.fluenceSession = session;
        Promise.resolve(session)
    }
}

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
