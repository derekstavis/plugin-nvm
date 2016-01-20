#!/bin/bash

# Don't touch if cached
if test ! -e $HOME/.local/share/omf/init.fish; then
  wget -O - $OMF_INSTALLER | fish
  fish -c 'omf install foreign-env'
else
  echo Using cached Oh My Fish install
fi
