#!/usr/bin/bash
#
# NodeJS application development environment
# author: v3rlly

#######################################################
# Install NodeJS 16.x
#######################################################
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

#######################################################
# Configure NPM to install locally accessible packages
#
#   NEW_LOCATION: New global packages folder
######################################################
NEW_LOCATION=".local/lib/node_modules"

# Creates new global package folder
mkdir -p "$HOME/$NEW_LOCATION"

# Change NPM prefix
npm config set prefix "$HOME/$NEW_LOCATION"

# Setup $PATH
echo "# NPM global packages" >> $HOME/.profile
echo "export PATH=$HOME/$NEW_LOCATION/bin:\$PATH" >> $HOME/.profile

# Apply changes inside the script 
source $HOME/.profile


#######################################################
# Install some useful packages for global use
#######################################################
npm i -g node-gyp
npm i -g yarn
npm i -g typescript
npm i -g pm2
npm i -g gulp-cli


# Apply changes out of script
echo "type: \"source ~/.profile\" to apply changes"

# done.
