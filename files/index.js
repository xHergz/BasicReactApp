
import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';

import BasicReactApp from './containers/BasicReactApp';
import configureStore from './store/configureStore';

const store = configureStore();

ReactDOM.render(
    <Provider store={store}>
        <BasicReactApp />
    </Provider>,
    document.getElementById('root')
);
