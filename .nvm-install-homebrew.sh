#!/bin/bash

brew update
brew install nvm

# Homebrew's Caveats

# Please note that upstream has asked us to make explicit managing
# nvm via Homebrew is unsupported by them and you should check any
# problems against the standard nvm install method prior to reporting.

# You should create NVM's working directory if it doesn't exist:

mkdir ~/.nvm

# Add the following to ~/.bash_profile or your desired shell
# configuration file:

export NVM_DIR=$HOME/.nvm
source $(brew --prefix nvm)/nvm.sh

# You can set $NVM_DIR to any location, but leaving it unchanged from
# /usr/local/Cellar/nvm/0.30.1 will destroy any nvm-installed Node installations
# upon upgrade/reinstall.

nvm install stable
nvm alias default stable
