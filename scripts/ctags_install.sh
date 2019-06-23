#!/bin/bash
VERSION=f06928e
cd /tmp && git clone https://github.com/universal-ctags/ctags.git && cd ctags && git checkout $VERSION && ./autogen.sh && ./configure && make && sudo make install

