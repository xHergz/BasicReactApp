# Basic React App Master Script

# Make the directory for us to work in
new_app_dir=$1
script_dir=$PWD
mkdir $new_app_dir
cd $new_app_dir

# Call the NPM commands
npm init
npm i webpack webpack-cli -S
npm i babel-loader @babel/preset-env @babel/preset-react @babel/core babel-plugin-transform-object-rest-spread -S
npm i react react-dom react-redux -S
npm i redux redux-thunk -S
npm i prop-types -S
npm i eslint -S
npm i eslint-config-airbnb -S
npm i react-bootstrap -S
npm i css-loader style-loader -S
npm i eslint-plugin-jsx-a11y --save-dev
npm i eslint-plugin-react --save-dev
npm i eslint-plugin-import --save-dev
npm i @fortawesome/fontawesome -S
npm i @fortawesome/react-fontawesome -S
npm i @fortawesome/fontawesome-free-solid -S
npm i @fortawesome/fontawesome-free-brands -S


# Copy over the basic webpack.config.js
cp $script_dir/files/webpack.config.js $new_app_dir

# Run the React folder structure creation script
$script_dir/scripts/CreateReactStructure.sh

# Copy over the default app files
cp $script_dir/files/index.js $new_app_dir/src/BasicReactApp
cp $script_dir/files/BasicReactApp.js $new_app_dir/src/BasicReactApp/containers
cp $script_dir/files/configureStore.js $new_app_dir/src/BasicReactApp/store
cp $script_dir/files/rootReducer.js $new_app_dir/src/BasicReactApp/reducers

# Copy over the default html page
cp $script_dir/files/BasicReactApp.html $new_app_dir/pages

# Copy over the default .babelrc
cp $script_dir/files/.babelrc $new_app_dir

# Copy over the default .eslintrc
cp $script_dir/files/.eslintrc $new_app_dir

# Reminder to replace the scripts in package.json
echo Remember to add the following scripts to the package.json file!
# "dev": "webpack -d -w",
# "build": "webpack -p",
# "lint": "eslint ./src/"
echo \"dev\": \"webpack -d -w\",
echo \"build\": \"webpack -p\",
echo \"lint\": \"eslint ./src/\"