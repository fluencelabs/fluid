import {handler} from "../main";

describe("example", () => {

  it("can log some values to the console", () => {
    log<string>(handler('{"hi": "hi"}'));
    log<string>(handler('{"action": "Post", "msg": "Hello, Fluence!", "handle": "fluencer"}'));
    log<string>(handler('{"action": "Post", "msg": "Hello, fluencer!", "handle": "John Doe"}'));
    log<string>(handler('{"action": "Post", "msg": "How is it going?", "handle": "fluencer"}'));
    log<string>(handler('{"action": "Post", "msg": "Excellent! Thanks!", "handle": "John Doe"}'));
    log<string>(handler('{"action": "Fetch"}'));
    log<string>(handler('{"action": "Fetch", "filter_handle": "John Doe"}'));
    log<string>(handler('{"action": "Fetch", "filter_handle": "fluencer"}'));
  });
});
