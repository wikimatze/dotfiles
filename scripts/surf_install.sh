#!/bin/bash

sudo apt-get install -y build-essential gnome-devel
sudo apt-get install -y libwebkitgtk-dev

cd /tmp && git clone http://git.suckless.org/surf && cd surf && sudo make && sudo make install
rm -rf surf/

