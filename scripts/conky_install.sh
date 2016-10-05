#!/bin/bash
VERSION=1.10.5
sudo apt-get install libtolua-dev libtolua++5.1-dev libx11-dev libxft-dev libxdamage-dev libncurses5-dev libxinerama-dev

cd /tmp && git clone https://github.com/brndnmtthws/conky.git && cd conky && git checkout v$VERSION
mkdir build && cd build && cmake .. & make & sudo make install
