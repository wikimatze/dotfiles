#!/bin/bash
VERSION=1.5

cd /tmp && git clone https://github.com/weechat/weechat.git && cd weechat && git checkout v$VERSION && mkdir build && cd build && cmake .. && make && sudo make install

