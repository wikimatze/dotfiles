#!/bin/bash
VERSION=2.3

sudo apt-get install -y libgcrypt20-dev

cd /tmp && rm -rf weechat && git clone https://github.com/weechat/weechat.git && cd weechat && git checkout v$VERSION && mkdir build && cd build && cmake .. && make && sudo make install

