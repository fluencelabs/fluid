import { combineReducers } from "redux";

import updates from "./messages";

import { loadingBarReducer } from "react-redux-loading-bar";

export default combineReducers({
    updates: updates,
    loadingBar: loadingBarReducer
});
