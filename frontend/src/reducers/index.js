import { combineReducers } from "redux";

import messages from "./messages";

import { loadingBarReducer } from "react-redux-loading";

export default combineReducers({
    messages,
    loadingBar: loadingBarReducer
});
