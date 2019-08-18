import React, {Component} from "react";
import {connect} from "react-redux";
import {toggleConnection} from "../fluence/api";

class ConnectionToggle extends Component {
    constructor(props) {
        super(props);
        this.state = {
            devnetConnect: false,
            toggleDisabled: false
        };

        // This binding is necessary to make `this` work in the callback
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick() {
        let newConnect = !this.state.devnetConnect;
        this.setState(() => ({
            toggleDisabled: true,
            devnetConnect: newConnect
        }));
        toggleConnection(newConnect).finally(() => {
            this.setState(state => ({
                toggleDisabled: false
            }));
        });
    }

    render() {
        return (
            <div>
                <label className="switch">
                    <input type="checkbox" onClick={this.handleClick} disabled={this.state.toggleDisabled}/>
                    <span className="slider round"/>
                </label>
                <p><b>{this.state.devnetConnect ? 'DevNet' : 'localhost'}</b></p>
            </div>

        );
    }
}

export default connect()(ConnectionToggle);
