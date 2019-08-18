import {Action, decode, FetchRequest, PostRequest} from "./request";
import {PostResponse, UnknownResponse} from "./response";
import {addMessage, createScheme, getMessages, getPostsCount} from "./model";

createScheme();

// main handler for an application
export function handler(input: string): string {

  let request = decode(input);

  if (request.action == Action.Post) {
    let post = request as PostRequest;
    addMessage(post.message, post.username);
    let count = getPostsCount();

    let response = new PostResponse(count);
    return response.serialize()
  } else if (request.action == Action.Fetch) {
    let fetch = request as FetchRequest;

    let result = getMessages(fetch.username, fetch.offset, fetch.count);
    return result;
  }

  let response = new UnknownResponse();
  return response.serialize();
}
