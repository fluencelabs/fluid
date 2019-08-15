import {handler} from "../main";

describe("example", () => {

  it("can log some values to the console", () => {
    log<string>("Hello world!"); // strings!
    log<f64>(3.1415); // floats!
    log<u8>(244); // integers!
    log<u64>(0xFFFFFFFF); // long values!
    log<string>(handler('{"hi": "hi"}'));
    log<string>(handler('{"action": "Post", "msg": "Hello, Fluence!", "username": "fluencer"}'));
    log<string>(handler('{"action": "Post", "msg": "Hello, fluencer!", "username": "John Doe"}'));
    log<string>(handler('{"action": "Fetch"}'));
  });
});
