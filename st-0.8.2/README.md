# st - simple terminal
[st](https://dl.suckless.org/st/st-0.8.2.tar.gz) is a simple terminal emulator for X which sucks less.

# Patches

* [st-alpha-0.8.2.diff](https://st.suckless.org/patches/alpha/st-alpha-0.8.2.diff)
* [st-gruvbox-dark-0.8.2.diff](https://st.suckless.org/patches/gruvbox/st-gruvbox-dark-0.8.2.diff)
* [st-scrollback-0.8.4.diff](https://st.suckless.org/patches/scrollback/st-scrollback-0.8.4.diff)
* [st-scrollback-20201205-4ef0cbd.diff](https://st.suckless.org/patches/scrollback/st-scrollback-20201205-4ef0cbd.diff)
* [st-scrollback-mouse-0.8.2.diff](https://st.suckless.org/patches/scrollback/st-scrollback-mouse-0.8.2.diff)


## Requirements

In order to build st you need the Xlib header files.


## Installation

Edit config.mk to match your local setup (st is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install st (if
necessary as root):

    make clean install


## Running st

If you did not install st with make clean install, you must compile
the st terminfo entry with the following command:

    tic -sx st.info

See the man page for additional details.

# Credits
Based on Aurélien APTEL <aurelien dot aptel at gmail dot com> bt source code.

