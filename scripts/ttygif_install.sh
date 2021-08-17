#!/bin/bash
VERSION=1.5.0
sudo apt-get install -y imagemagick ttyrec gcc x11-apps
cd /tmp && git clone https://github.com/icholy/ttygif.git && cd ttygif && git checkout $VERSION

make && sudo cp ttygif /usr/local/bin

