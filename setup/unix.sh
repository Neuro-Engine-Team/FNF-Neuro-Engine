#!/bin/sh
# Setup script for macOS and Linux
cd ..
echo "Setting up Haxe libraries..."

mkdir -p ~/haxelib && haxelib setup ~/haxelib

echo "Installing dependencies via HMM..."
echo "This might take a few moments depending on your internet speed."

# Install and run your custom HMM fork
haxelib git hmm https://github.com/SatoruSam/hmm --quiet
haxelib run hmm install --quiet

echo "Finished installing all required libraries!"
