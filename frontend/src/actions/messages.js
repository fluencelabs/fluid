import {changeConnection, getMessages, saveMessage} from "../fluence/api";
import { showLoading, hideLoading } from "react-redux-loading-bar";

export const ADD_MESSAGE = "ADD_MESSAGE";
export const RECEIVE_MESSAGES = "RECEIVE_MESSAGES";

function addMessage(message) {
    return {
        type: ADD_MESSAGE,
        message
    };
}

export async function toggleConnection(devnet, appId = 413) {
    return changeConnection(devnet, appId)
}

export function fetchPosts(counter) {
    return dispatch => {
        return getMessages().then((messages) => {
            dispatch(receiveMessages(messages, counter));
        })
    };
}

export function handleInitialData() {
    return dispatch => {
        //before retrieving info, show loading bar
        dispatch(showLoading());

        return getMessages().then((messages) => {
            dispatch(receiveMessages(messages, 0));

            //after everything has loaded, hide loading bar
            dispatch(hideLoading());
        });
    };
}

export function handleAddMessage(text, name) {
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
export function receiveMessages(messages, counter) {
    return {
        type: RECEIVE_MESSAGES,
        counter,
        messages
    };
}
