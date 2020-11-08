#! bin/bash

# Script to install countdown plasmoid. It updates your system, installs git if
# not already there, then downloads and installs the app. If you happn to
# already have 'foobartemp' directory, just change the temp directory in the
# script to something else, you weirdo, because it deletes the directory.

sudo apt update && sudo apt upgrade -y
sudo apt install git -y
git clone https://github.com/Yaargh/countdown.git ~/foobarfoobartemp/
kpackagetool5 -t Plasma/Applet --install ~/foobarfoobartemp/package
rm -rf ~/foobarfoobartemp



