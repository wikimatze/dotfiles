#!/bin/bash
VERSION=2.12
sudo apt-get install libsoup2.4-dev libwebkit-dev libgtk-3-dev libwebkitgtk-3.0-dev -y

cd /tmp && git clone https://github.com/fanglingsu/vimb.git && cd vimb && git checkout $VERSION
make && sudo make install && make clean

