#!/bin/bash

PACKAGE=$HOME/.local/share/omf/pkg/nvm

if test -e $PACKAGE; then
  unlink $PACKAGE >/dev/null 2>&1 || rm -rf $PACKAGE
fi

ln -s $PWD $PACKAGE
fish -c "omf install foreign-env"
