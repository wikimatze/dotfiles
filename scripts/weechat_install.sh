#!/bin/bash
VERSION=1.6

cd /tmp && rm -rf weechat && git clone https://github.com/weechat/weechat.git && cd weechat && git checkout v$VERSION && mkdir build && cd build && cmake .. && make && sudo make install

