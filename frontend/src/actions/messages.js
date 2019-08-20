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

let lastResponseRequestTime = 0;

export function fetchPosts() {
    return dispatch => {
        const currentRequestTime = Date.now();
        return getMessages().then((messages) => {
            if (currentRequestTime > lastResponseRequestTime) {
                lastResponseRequestTime = currentRequestTime;
                dispatch(receiveMessages(messages));
            }
        })
    };
}

export function handleInitialData() {
    return dispatch => {
        //before retrieving info, show loading bar
        dispatch(showLoading());

        return getMessages().then((messages) => {
            dispatch(receiveMessages(messages));

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
export function receiveMessages(messages) {
    return {
        type: RECEIVE_MESSAGES,
        messages
    };
}
