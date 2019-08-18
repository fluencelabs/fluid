import React, {Component, Fragment} from "react";
import {BrowserRouter as Router} from "react-router-dom";
import {connect} from "react-redux";

import LoadingBar from "react-redux-loading-bar";
import Dashboard from "./Dashboard";
import NewMessage from "./NewMessage";
import ConnectionToggle from "./ConnectionToggle";

class App extends Component {

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
