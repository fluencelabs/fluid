import {Action, decode, PostRequest} from "./request";
import {SuccessPostResponse, Twit, TwitsResponse, UnknownResponse} from "./response";

let twitList: Array<Twit> = new Array<Twit>();

// main handler for an application
export function handler(input: string): string {

  let request = decode(input);

  if (request.action == Action.Post) {
    let post = request as PostRequest;
    twitList.push(new Twit(post.msg, post.handle));
    let response = new SuccessPostResponse(twitList.length);
    return response.serialize()
  } else if (request.action == Action.Fetch) {
    let response = new TwitsResponse(twitList);
    return response.serialize()
  }

  let response = new UnknownResponse();
  return response.serialize();
}
