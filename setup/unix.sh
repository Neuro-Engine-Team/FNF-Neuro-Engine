#!/bin/sh
# SETUP FOR MAC AND LINUX SYSTEMS!!!
# REMINDER THAT YOU NEED HAXE INSTALLED PRIOR TO USING THIS
# https://haxe.org/download

cd ..
echo Makking the main haxelib and setuping folder in same time..
mkdir ~/haxelib && haxelib setup ~/haxelib

echo Installing dependencies...
echo This might take a few moments depending on your internet speed.

# Repositories corrected to official ones
haxelib install hxcpp --quiet
haxelib install lime 8.1.2 --quiet
haxelib install openfl 9.3.3 --quiet
haxelib install flixel 5.6.1 --quiet

# Rest of the dependencies (ok)
haxelib install flixel-addons 3.2.2 --quiet
haxelib install flixel-tools 1.5.1 --quiet
haxelib install hscript-iris 1.1.3 --quiet
haxelib install tjson 1.4.0 --quiet
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate 768740a56b26aa0c072720e0d1236b94afe68e3e --quiet
haxelib git linc_luajit https://github.com/MobilePorting/linc_luajit --quiet
haxelib install hxdiscord_rpc --quiet --skip-dependencies
haxelib install hxvlc 2.0.1 --quiet --skip-dependencies
haxelib git funkin.vis https://github.com/FunkinCrew/funkVis 22b1ce089dd924f15cdc4632397ef3504d464e90 --quiet --skip-dependencies
haxelib git grig.audio https://gitlab.com/haxe-grig/grig.audio.git cbf91e2180fd2e374924fe74844086aab7891666 --quiet

echo Finished!
