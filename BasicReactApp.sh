# Basic React App Master Script

# Make the directory for us to work in
mkdir $1
cd ./$1

# Call the NPM commands
npm init
npm i webpack -S
npm i babel-loader babel-preset-es2015 babel-preset-react babel-core -S
npm i react react-dom -S
npm i redux -S
npm i prop-types -S
npm i eslint -S
npm i eslint-config-airbnb -S
npm i react-bootstrap -S
npm i css-loader style-loader -S
npm install eslint-plugin-jsx-ally --save-dev
npm install eslint-plugin-react --save-dev
npm install eslint-plugin-import --save-dev
npm i @fortawesome/fontawesome -S
npm i @fortawesome/react-fontawesome -S
npm i @fortawesome/fontawesome-free-solid -S

# Copy over the basic webpack.config.js

# Run the React folder structure creation script

# Copy over the default index.js

# Copy over the default page.html

# Copy over the default .babelrc

# Copy over the default .eslintrc

# Reminder to replace the scripts in package.json
