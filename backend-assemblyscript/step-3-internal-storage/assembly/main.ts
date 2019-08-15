import {Action, decode, FetchRequest, PostRequest} from "./request";
import {PostResponse, Message, FetchResponse, UnknownResponse} from "./response";

let posts: Array<Message> = new Array<Message>();

// main handler for an application
export function handler(input: string): string {

  let request = decode(input);

  if (request.action == Action.Post) {
    let post = request as PostRequest;
    posts.push(new Message(post.msg, post.username));
    let response = new PostResponse(posts.length);
    return response.serialize()
  } else if (request.action == Action.Fetch) {
    let fetch = request as FetchRequest;
    var messages: Array<Message>;
    if (fetch.filter_handle == null) {
      messages = posts
    } else {
      let filter_handle = fetch.filter_handle as string;
      let filtered = new Array<Message>();
      for (let i = 0; i < posts.length; i++) {
        let message = posts[i];
        if (message.username == filter_handle) {
          filtered.push(message)
        }
      }
      messages = filtered;
    }
    let response = new FetchResponse(messages);
    return response.serialize()
  }

  let response = new UnknownResponse();
  return response.serialize();
}
