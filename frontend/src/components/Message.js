import React, { Component } from "react";
import { connect } from "react-redux";
import { withRouter } from "react-router-dom";

class Message extends Component {
    render() {
        const { message } = this.props;

        if (message === null) {
            return <p>This message doesn't exist</p>;
        }

        const {
            name,
            text
        } = message;

        return (
            <div className="message-info">
                <div>
                    <span>{name}</span>
                    <p>{text}</p>
                </div>
            </div>
        );
    }
}

function mapStateToProps(message) {
    return message;
}

//using withRouter because this component is not being rendered by react router, so to have access to history props, we need to use withRouter
export default withRouter(connect(mapStateToProps)(Message));
