import React, {Component, Fragment} from "react";
import {BrowserRouter as Router} from "react-router-dom";
import {connect} from "react-redux";

import LoadingBar from "react-redux-loading-bar";
import Dashboard from "./Dashboard";
import NewMessage from "./NewMessage";
import ConnectionToggle from "./ConnectionToggle";

class App extends Component {

    componentDidMount() {
        console.log(`

Hello, Fluencer!
Thank you for trying Fluence out!
You can find docs at https://fluence.dev
Check out http://dash.fluence.network to deploy your own SQL DB instance
Check out https://github.com/fluencelabs/tutorials for more Fluence examples
If you have any questions, feel free to join our Discord https://fluence.chat :)

You can send requests to Fluence network straight from console:

// send the message and don't wait for a response
fluenceSession.requestAsync('{"action": "Post", "message": "Hello, Fluence!", "username": "fluencer"}')

// get the last message, decode response as a string and print it in the console
fluenceSession.request('{"action": "Fetch", "offset": 0, "limit": 1}').then((r) => r.asString()).then(console.log)                   

  
`)
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
