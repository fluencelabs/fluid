import { RECEIVE_MESSAGES, ADD_MESSAGE } from "../actions/messages";

export default function messages(state = [], action) {
    switch (action.type) {
        case RECEIVE_MESSAGES:
            return action.messages;

        case ADD_MESSAGE:
            console.log("reducer message");
            console.log(state);
            console.log(action);
            const { message } = action; //getting the newly added message from action
            state.push(message);

            return state;

        default:
            return state;
    }
}
