import {Action, decode, FetchRequest, PostRequest} from "./request";
import {PostResponse, Message, FetchResponse, UnknownResponse} from "./response";
import {addMessage, getMessages, getPostsCount, initTables} from "./database";

initTables();

// main handler for an application
export function handler(input: string): string {

  let request = decode(input);

  if (request.action == Action.Post) {
    let post = request as PostRequest;
    addMessage(post.msg, post.handle);
    let count = getPostsCount();

    let response = new PostResponse(count);
    return response.serialize()
  } else if (request.action == Action.Fetch) {
    let fetch = request as FetchRequest;

    let result = getMessages(fetch.handle);
    return result;
  }

  let response = new UnknownResponse();
  return response.serialize();
}
