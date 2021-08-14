#!/bin/bash
VERSION=2.5.4
cd /tmp && git clone https://github.com/jonas/tig.git && cd tig && git checkout tig-$VERSION
sudo make prefix=/usr/local && sudo make install prefix=/usr/local
