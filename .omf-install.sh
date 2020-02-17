#!/bin/bash

echo "Downloading latest installer..."
wget -O - $OMF_INSTALLER > /tmp/install.fish
echo "Installing Oh My Fish..."
fish /tmp/install.fish --channel=dev
echo "Installing dependencies..."
fish -c "omf install"
