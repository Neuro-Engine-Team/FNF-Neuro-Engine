#!/bin/bash
set -e

# Installing the libraries (simplified comments in English)
# Ensure haxelib uses the home haxelib folder
haxelib setup ~/.haxelib || true

echo "Installing the libraries"
haxelib install hxcpp 4.3.2 --skip-dependencies --quiet
haxelib install lime 8.2.2 --skip-dependencies --quiet
haxelib install openfl 9.4.1 --skip-dependencies --quiet
haxelib install flixel 5.6.1 --skip-dependencies --quiet
haxelib install flixel-addons 3.2.2 --skip-dependencies --quiet
haxelib install flixel-tools 1.5.1 --skip-dependencies --quiet

haxelib install tjson 1.4.0 --skip-dependencies --quiet
haxelib install format 3.7.0 --skip-dependencies --quiet
haxelib install hxp 1.3.0 --skip-dependencies --quiet
haxelib install hxvlc 2.0.1 --skip-dependencies --quiet
haxelib install hxdiscord_rpc 1.2.4 --skip-dependencies --quiet
haxelib install hxcpp-debug-server 1.2.4 --skip-dependencies --quiet
haxelib install hscript-iris 1.1.3 --skip-dependencies --quiet
haxelib install SScript 8.1.6 --skip-dependencies --quiet

# Git installs for libs that require git source
haxelib git hxluajit https://github.com/MAJigsaw77/hxluajit --skip-dependencies --quiet
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit.git --skip-dependencies --quiet
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate --skip-dependencies --quiet
haxelib git funkin.vis https://github.com/FunkinCrew/funkVis --skip-dependencies --quiet
haxelib git grig.audio https://gitlab.com/haxe-grig/grig.audio.git --skip-dependencies --quiet

# Clone directly into ~/.haxelib and create .current so lime finds extension-androidtools 
EXT_DIR="$HOME/.haxelib/extension-androidtools"
rm -rf "$EXT_DIR" || true
mkdir -p "$(dirname "$EXT_DIR")"
git clone --depth 1 https://github.com/TheFrost72/extension-androidtools "$EXT_DIR"
# write absolute path into .current so haxelib/lime can resolve it
realpath "$EXT_DIR" > "$EXT_DIR/.current"

# Optional: set haxelib pointer (safe)
haxelib set extension-androidtools git || true

echo "Libraries installed successfully"
