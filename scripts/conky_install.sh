#!/bin/bash
VERSION=1.12.2
sudo apt-get install libtolua-dev libtolua++5.1-dev libx11-dev libxft-dev libxdamage-dev libncurses5-dev libxinerama-dev cmake libimlib2-dev -y

cd /tmp && git clone https://github.com/brndnmtthws/conky.git && cd conky && git checkout v$VERSION
mkdir build && cd build && cmake .. && make && sudo make install
