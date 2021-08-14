#!/bin/bash
VERSION=p5.9.20210808.0
cd /tmp && git clone https://github.com/universal-ctags/ctags.git && cd ctags && git checkout $VERSION && ./autogen.sh && ./configure && make && sudo make install

