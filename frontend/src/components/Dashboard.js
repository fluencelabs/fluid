import React, { Component } from "react";
import { connect } from "react-redux";

import Message from "./Message";
import {handleInitialData, fetchPosts} from "../actions/messages";

class Dashboard extends Component {

    constructor(props) {
        super(props);
        this.state = {counter: 1, lastUpdateCounter: 0, firstFetch: true};
    }

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
        this.props.dispatch(fetchPosts(this.state.counter + 1, this.state.firstFetch));

        this.setState((state) => ({
            counter: state.counter + 1,
            firstFetch: false
        }));
    }

    shouldComponentUpdate(nextProps) {
        return nextProps.updates.counter > this.state.lastUpdateCounter
    }

    render() {
        let updates = this.props.updates;
        if (updates.counter) {
            this.setState(() => ({
                lastUpdateCounter: updates.counter
            }));
        }
        return (
            <div>
                <h3 className="center">Feed</h3>
                <ul className="dashbord-list">
                    {updates.messages.map((m, i) => {
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
