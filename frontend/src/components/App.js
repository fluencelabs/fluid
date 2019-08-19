import React, {Component, Fragment} from "react";
import {BrowserRouter as Router} from "react-router-dom";
import {connect} from "react-redux";

import LoadingBar from "react-redux-loading-bar";
import Dashboard from "./Dashboard";
import NewMessage from "./NewMessage";
import ConnectionToggle from "./ConnectionToggle";

class App extends Component {

    componentDidMount() {
        setTimeout(() => {
            console.log(`

Hello, Fluencer!
Thank you for trying Fluence out!
You can find docs at https://fluence.dev
Check out http://dash.fluence.network to deploy your own application

If you have any questions, feel free to join our Discord https://fluence.chat :)

Change 'appId' in 'toggleConnection' method in 'action/messages.js' if needed.

You can send requests to Fluence network straight from console:

// Create a session to interact with your app
var session = fluence.directConnect("localhost", 30000);

// Or use current 'fluenceSession'

// Read data – similar to how you've done it in command line,
// except sessionId and counter here are handled automatically
(await fluenceSession.request(\`{"action": "Fetch"}\`)).asString()

// Create new post, and wait for it to appear in UI
await fluenceSession.requestAsync(
  \`{"action": "Post", "message": "It's working!", "username": "console_joe"}\`
);

// Note different methods: request and requestAsync. And there's also a query.
// request – does write-and-read
// requestAsync – only write
// query – retrieves result for requestAsync-created request                   
`)
        }, 3000);
}

    render() {
        return (
            <Router>
              <Fragment>
                <LoadingBar />
                <div className="container">
                  {this.props.loading === true ? null : (
                      <div>
                          <div>
                              <div style={{float: "left", position: "absolute"}}><ConnectionToggle /></div>
                              <div style={{float: "center"}}><NewMessage /></div>
                          </div>

                          <Dashboard />
                      </div>
                  )}
                </div>
              </Fragment>
            </Router>
        );
    }
}

export default connect()(App);
