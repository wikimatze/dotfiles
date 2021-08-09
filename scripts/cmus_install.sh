#!/bin/bash
VERSION=2.9.1
sudo apt-get build-dep cmus

# get version from https://cmus.github.io/#download
cd /tmp && wget https://github.com/cmus/cmus/archive/v$VERSION.tar.gz && tar -xf v$VERSION.tar.gz && cd cmus-$VERSION && ./configure && make && sudo make install

