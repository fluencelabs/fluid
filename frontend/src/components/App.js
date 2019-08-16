import React, { Component, Fragment } from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import { connect } from "react-redux";
import { handleInitialData } from "../actions/shared";

import LoadingBar from "react-redux-loading"; //importing the loading bar given by react-redux-loading

import Dashboard from "./Dashboard";
import NewMessage from "./NewMessage";

class App extends Component {
  componentDidMount() {
    this.props.dispatch(handleInitialData());
  }

  render() {
    return (
        <Router>
          {/* using a fragment so we don't add another element (div) to the DOM */}
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

function mapStateToProps({ }) {
  return {

  };
}

export default connect(mapStateToProps)(App);
