import { RECEIVE_MESSAGES, ADD_MESSAGE } from "../actions/messages";

export default function updates(state = {messages: []}, action) {
    switch (action.type) {
        case RECEIVE_MESSAGES:
            return action;

        case ADD_MESSAGE:
            const { message } = action; //getting the newly added message from action
            state.messages.unshift(message);

            return state;

        default:
            return state;
    }
}
