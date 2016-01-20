#!/bin/bash

if test ! -d $HOME/fish/bin; then
  cd $HOME
  wget $FISH_RELEASE
  tar -xzf $(basename $FISH_RELEASE)
  rm $(basename $FISH_RELEASE)
  pushd $(basename ${FISH_RELEASE%.tar.gz})
  ./configure --prefix=$HOME/fish
  make
  make install
  popd
  rm -rf $(basename ${FISH_RELEASE%.tar.gz})
else
  echo Using cached fish install
fi

export PATH=$HOME/fish/bin:$PATH
