# countdown
A plasmoid to countdown until a later date.

I'm not a dev and don't really know how to code.  I'm just having a lark here.

## Install this plasmoid from GitHub (instructions valid for Debian/Ubuntu)

First, update your system.

`sudo apt update && sudo apt upgrade -y`

If you don't have Git on your system, make that happen.

`sudo apt install git -y`

Make a directory to download this into and go to that directory.

`mkdir ~/foo`

`cd ~/foo`

Now clone the repo.

`git clone https://github.com/Yaargh/countdown.git`

Now install.

`kpackagetool5 -t Plasma/Applet --install ~/foo/countdown/package`

Now you can install the plasmoid in Plasma.  You can delete ~/foo now.

`rm -rf ~/foo/*`

`rmdir ~/foo'

