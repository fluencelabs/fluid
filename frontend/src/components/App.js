import React, {Component, Fragment} from "react";
import {BrowserRouter as Router} from "react-router-dom";
import {connect} from "react-redux";

import LoadingBar from "react-redux-loading"; //importing the loading bar given by react-redux-loading
import Dashboard from "./Dashboard";
import NewMessage from "./NewMessage";

class App extends Component {

    render() {
        return (
            <Router>
              <Fragment>
                <LoadingBar />
                <div className="container">
                  {this.props.loading === true ? null : (
                      <div>
                          <NewMessage />
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
