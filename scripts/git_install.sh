#!/bin/bash
VERSION=2.14.1
sudo apt-get install asciidoc xmlto docbook2x -y
cd /tmp && wget https://github.com/git/git/archive/v$VERSION.tar.gz && tar -zxf v$VERSION.tar.gz
cd /tmp/git-$VERSION && make configure && ./configure --prefix=/usr && make all && sudo make install

