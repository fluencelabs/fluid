let messages = [
    {
        text: "Shoutout to all the speakers I know for whom English is not a first language, but can STILL explain a concept well. It's hard enough to give a good talk in your mother tongue!",
        name: "sarah_edo"
    },
    {
        text: "I hope one day the propTypes pendulum swings back. Such a simple yet effective API. Was one of my favorite parts of React.",
        name: "tylermcginnis"
    },
    {
        text: "Want to work at Facebook/Google/:BigCompany? Start contributing code long before you ever interview there.",
        name: "tylermcginnis"
    },
    {
        text: "Puppies 101: buy a hamper with a lid on it.",
        name: "sarah_edo"
    },
    {
        text: "Is there a metric like code coverage, but that shows lines that, if changed (in a syntactically correct way), wouldn’t cause tests to fail?",
        name: "dan_abramov",
    },
    {
        text: "React came out 'rethinking best practices'. It has since accumulated 'best practices' of its own. Let’s see if we can do better.",
        name: "dan_abramov",
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
