import { saveMessage } from "../utils/api";

//importing loading bar to show when we submit a tweet
import { showLoading, hideLoading } from "react-redux-loading";

export const ADD_MESSAGE = "ADD_MESSAGE";
export const RECEIVE_MESSAGES = "RECEIVE_MESSAGES";

function addMessage(message) {
    return {
        type: ADD_MESSAGE,
        message
    };
}

//args: message text and the message that the newTweet is replying to, if any
export function handleAddMessage(text, name) {
    //using getState to get the current state of our store
    return (dispatch) => {
        dispatch(showLoading());
        return saveMessage({
            text: text,
            name: name
        })
            .then(message => dispatch(addMessage(message)))
            .then(() => dispatch(hideLoading()));
    };
}

//action creator
export function receiveMessages(messages) {
    return {
        type: RECEIVE_MESSAGES,
        messages
    };
}
