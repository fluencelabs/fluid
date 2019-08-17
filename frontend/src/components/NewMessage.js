import React, {Component} from "react";
import {connect} from "react-redux";
import {handleAddMessage} from "../actions/messages";

class NewMessage extends Component {
    state = {
        text: "",
        name: ""
    };

    handleChangeText = e => {
        const text = e.target.value;

        this.setState(() => ({
            text
        }));
    };

    handleChangeName = e => {
        const name = e.target.value;

        this.setState(() => ({
            name
        }));
    };

    handleSubmit = e => {
        e.preventDefault();
        const { text, name } = this.state;

        const { dispatch } = this.props;

        dispatch(handleAddMessage(text, name));

        //reset state to default
        this.setState(() => ({
            text: "",
            name: ""
        }));
    };

    render() {
        const { text, name } = this.state;
        const messageLeft = 280 - text.length;

        return (
            <div>
                <h3 className="center">Compose new message </h3>
                <form className="new-message" onSubmit={this.handleSubmit}>
                    <textarea
                        placeholder="Message"
                        value={text}
                        onChange={this.handleChangeText}
                        className="textarea"
                        maxLength={280}
                    />
                    <input type="text" className="nameinput" placeholder="Name" value={name}
                           onChange={this.handleChangeName}/>
                    {/* show how many characters are left */}
                    {messageLeft <= 100 && <div className="message-length">{messageLeft}</div>}

                    {/* button is disabled if it's an empty string */}
                    <button className="btn" type="submit" disabled={text === ""}>
                        Submit
                    </button>
                </form>
            </div>
        );
    }
}

export default connect()(NewMessage);
