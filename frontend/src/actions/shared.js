import { getMessages } from "../utils/api";

//importing action creators
import { receiveMessages } from "./messages";

//importing action creators of loading bar
import { showLoading, hideLoading } from "react-redux-loading";

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
