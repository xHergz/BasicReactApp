/* eslint-disable */

var webpack = require('webpack');
var path = require('path');

var BUILD_DIR = path.resolve(__dirname, 'dist');
var APP_DIR = path.resolve(__dirname, 'src');
var NODE_MODULES = path.resolve(__dirname, 'node_modules');

var config = {
    entry: {
        BasicReactApp: APP_DIR + '\\BasicReactApp\\index.js'
    },
    output: {
        path: BUILD_DIR,
        filename: '[name].js'
    },
    module: {
        rules: [
            {
                test: [/\.js$/, /\.jsx$/],
                include: APP_DIR,
                use: 'babel-loader'
            },
            {
                test: /\.css$/,
                use: ['style-loader', 'css-loader']
            }
        ]
    }
};

module.exports = config;
