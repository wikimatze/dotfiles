#!/bin/bash
VERSION=3.0-alpha
sudo apt-get install webkit2gtk-4.0 libsoup2.4-dev libwebkit-dev libgtk-3-dev libwebkitgtk-3.0-dev -y

cd /tmp && git clone https://github.com/fanglingsu/vimb.git && cd vimb && git checkout $VERSION
make && sudo make install && make clean

