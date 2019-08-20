import React, { Component } from "react";
import { connect } from "react-redux";

import Message from "./Message";
import {handleInitialData, fetchPosts} from "../actions/messages";

class Dashboard extends Component {
    componentDidMount() {
        this.props.dispatch(handleInitialData());
        this.pollingMessages = setInterval(
            () => this.getMessages(),
            1500
        );
    }

    componentWillUnmount() {
        clearInterval(this.pollingMessages);
    }

    getMessages() {
        this.props.dispatch(fetchPosts());
    }

    render() {
        return (
            <div>
                <h3 className="center">Feed</h3>
                <ul className="dashbord-list">
                    {this.props.updates.messages.map((m, i) => {
                        return (
                            <li key={i}>
                                <Message message={m} />
                            </li>
                        )
                    })}
                </ul>
            </div>
        );
    }
}

function mapStateToProps(state) {
    return state;
}

export default connect(mapStateToProps)(Dashboard);
