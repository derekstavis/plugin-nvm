#!/bin/bash

brew update
brew install fish nvm
mkdir ~/.nvm
curl -L $OMF_INSTALLER | fish
fish -c 'omf install foreign-env'
mkdir -p $HOME/.local/share/omf/pkg/nvm && cp -R * $HOME/.local/share/omf/pkg/nvm
fish -c "nvm install v4.2.4; and nvm alias default v4.2.4"
