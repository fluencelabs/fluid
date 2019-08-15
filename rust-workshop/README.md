# Fluid – decentralized twitter-like feed built on Fluence with SQLite
## Workshop
### Step 0 – Framework
Here you can see the most basic Fluence app – just a hello-world. 

Take a note of `#invocation_handler` macro, it marks function as an entry-point to your app.

### Step 1 – JSON API
Now let's define some API for our feed backend. Let's use JSON as a communication format, and serde_json Rust library for handy serialization and deserialization.

Two enums – `Request` and `Response` in [api.rs](step1-json-api/src/api.rs) describe API for interaction with frontend.

Method `parse` parses `Request`, and `serialize` converts `Response` back to string, so it can be returned to frontend.

Here we also define [model.rs](step1-json-api/src/model.rs) – that's how we plan to use our database. Currently it is just a prototype, so we can implement our API in it's full.

### Step 2 – Database
Let's forget for a moment about API, and dive into using SQLite module.

- [ffi.rs](step2-database-only/src/ffi.rs) describes inter-module communication between Fluid and SQLite
- [databse.rs](step2-database-only/src/database.rs) provides us with `query` function that executes SQL query on SQLite module, and returns result as a String

Now, take a look at [lib.rs](step2-database-only/src/lib.rs) – a few SQL requests are sent there. 

First one creates the table for messages, next goes message insertion, emulating a user who's creating a post. Then, we select all messages and log them. 

But we decided to use JSON as a communication format, and SQLite allows us to query results in json. So the last query does exactly that – it is the same as usual `SELECT *`, but wraps result in json array.

### Step 3 – Tying everything together
Now let's use our SQLite knowledge to implement [model.rs](step3-finished-app/src/model.rs) so our API can really persists and read data. And voilà, we have our backend for almost twitter, but it can be easily decentralized!
  