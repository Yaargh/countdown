# countdown
A KDE plasmoid to count down until Trump leaves office.

I'm not a dev and don't really know how to code.  I'm just having a lark here.

## Install this plasmoid from GitHub

First, clone the repo to a directory, say ~/foo

'git clone https://github.com/Yaargh/countdown.git ~/foo/'

Now install.

`kpackagetool5 -t Plasma/Applet --install ~/foo/countdown/package`

Now you can install the plasmoid in Plasma.  You can delete ~/foo now.

`rm -rf ~/foo`

And there you go.  You can use the 'cdowninst.sh' script to install if you are
on Debian, Ubuntu, etc. or mod it for a different package manager.  ***If you
happen to have a directory called 'foobarfoobartemp' in your home directory you should change the script to use something else or it will get deleted.***
