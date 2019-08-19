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

Hello, fellow Fluencer! Thank you for trying Fluence out :)

You can find docs at https://fluence.dev
Also check out http://dash.fluence.network to deploy your own decentralized SQL/NoSQL databases

If you have any questions, join our Discord https://fluence.chat or Telegram https://t.me/fluence_hack :)

You can connect to Fluence and send some requests by copy-pasting this code:

// Connect to localy running fluence
var session = fluence.directConnect("localhost", 30000);
// To connect to remote app, use this:
// var session = fluence.connect("0xeFF91455de6D4CF57C141bD8bF819E5f873c1A01", "413")

// Send the message and don't wait for a response
session.requestAsync('{"action": "Post", "message": "Hello, Fluence!", "username": "fluencer"}')

// Get the last message, decode response as a string and print it in the console
session.request('{"action": "Fetch", "offset": 0, "limit": 1}').then((r) => r.asString()).then(console.log)

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
