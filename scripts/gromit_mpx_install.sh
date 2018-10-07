#!/bin/bash
sudo apt-get install libappindicator3-dev
VERSION=1.2
cd /tmp && rm -rf gromit-mpx && git clone https://github.com/bk138/gromit-mpx.git && cd gromit-mpx && git checkout $VERSION
autoreconf --install && ./configure && make && sudo make install

