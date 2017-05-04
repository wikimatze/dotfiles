#!/bin/bash
VERSION=1.4.0
sudo apt-get install -y imagemagick ttyrec gcc
cd /tmp && git clone https://github.com/icholy/ttygif.git && cd ttygif && git checkout $VERSION

make && sudo cp ttygif ~/bin

