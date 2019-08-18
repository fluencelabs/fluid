let messages = [
    {
        text: "Hi there!",
        name: "John Doe"
    },
    {
        text: "Hello, John!",
        name: "fluencer"
    },
    {
        text: "Nice to meet you!",
        name: "John Doe"
    },
    {
        text: "How is it going?",
        name: "fluencer"
    },
    {
        text: "I think I realized I like dogs so much because I can really relate to being motivated by snacks",
        name: "sarah_edo",
    },
    {
        text: "Maybe the real benefit of open source was the friendships we made along the way?",
        name: "tylermcginnis",
    }
];

export function _getMessages() {
    return new Promise((res, rej) => {
        setTimeout(() => res(messages), 1000)
    })
}

export function _saveMessage(message) {
    return new Promise((res, rej) => {
        setTimeout(() => {
            res(message)
        }, 1000)
    })
}
