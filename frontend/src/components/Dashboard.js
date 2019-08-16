import React, { Component } from "react";
import { connect } from "react-redux";

import Message from "./Message";

class Dashboard extends Component {
    render() {
        return (
            <div>
                <h3 className="center">Your Timeline</h3>
                <ul className="dashbord-list">
                    {this.props.messages.map((m, i) => {
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

//destructuring messages from state
function mapStateToProps(state) {
    return state;
}

export default connect(mapStateToProps)(Dashboard);
