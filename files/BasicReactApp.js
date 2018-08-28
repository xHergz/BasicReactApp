
import React from 'react';

class BasicReactApp extends React.Component {
    static test() {
        return <h1>Basic React App</h1>;
    }

    render() {
        return BasicReactApp.test();
    }
}

export default BasicReactApp;
