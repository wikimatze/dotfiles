#!/bin/bash
VERSION=f1de2a8
cd /tmp && git clone https://github.com/universal-ctags/ctags.git && cd ctags && git checkout $VERSION && ./autogen.sh && ./configure && make && sudo make install

