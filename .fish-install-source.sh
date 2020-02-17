#!/bin/bash

set -euo pipefail

if test ! -d "${HOME}/fish-${FISH_RELEASE}"; then
  cd ${HOME}
  wget "https://github.com/fish-shell/fish-shell/releases/download/${FISH_RELEASE}/fish-${FISH_RELEASE}.tar.gz"
  tar -xzf "fish-${FISH_RELEASE}.tar.gz"
  rm "fish-${FISH_RELEASE}.tar.gz"
  cd "fish-${FISH_RELEASE}"
  cmake .
  make
  sudo make install
else
  cd "${HOME}/fish-${FISH_RELEASE}"
  sudo make install
  echo Using cached fish install
fi

