import {Action, decode, FetchRequest, PostRequest} from "./request";
import {PostResponse, Message, FetchResponse, UnknownResponse} from "./response";
import {addMessage, getMessages, initTables} from "./database";

initTables();

// main handler for an application
export function handler(input: string): string {

  let request = decode(input);

  if (request.action == Action.Post) {
    let post = request as PostRequest;
    addMessage(post.msg, post.handle);
    let response = new PostResponse(0);
    return response.serialize()
  } else if (request.action == Action.Fetch) {
    let fetch = request as FetchRequest;

    let result = getMessages();
    return result;

    /*if (fetch.filter_handle == null) {
      messages = messageList
    } else {
      let filter_handle = fetch.filter_handle as string;
      let filtered = new Array<Message>();
      for (let i = 0; i < messageList.length; i++) {
        let message = messageList[i];
        if (message.handle == filter_handle) {
          filtered.push(message)
        }
      }
      messages = filtered;
    }
    let response = new FetchResponse(messages);
    return response.serialize()*/
  }

  let response = new UnknownResponse();
  return response.serialize();
}
