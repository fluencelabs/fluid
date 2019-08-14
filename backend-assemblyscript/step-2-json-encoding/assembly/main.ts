import {Action, decode, PostRequest} from "./request";
import {PostResponse, FetchResponse, UnknownResponse} from "./response";

let messages = new Array<string>();
messages.push("hello");
messages.push("hi!");

// main handler for an application
export function handler(input: string): string {

  let request = decode(input);

  if (request.action == Action.Post) {
    let post = request as PostRequest;
    let response = new PostResponse(0);
    return response.serialize()
  } else if (request.action == Action.Fetch) {
    let response = new FetchResponse(messages);
    return response.serialize()
  }

  let response = new UnknownResponse();
  return response.serialize();
}
