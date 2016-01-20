#!/bin/bash

# Don't touch if cached
if test ! -e $HOME/.nvm; then
  wget -O - $NVM_INSTALLER | bash
else
  echo Using cached nvm install
fi
