#!/bin/bash
sudo apt-get install imagemagick ttyrec gcc
cd /tmp && git clone https://github.com/icholy/ttygif.git && cd ttygif && make && sudo cp ttygif /usr/local/bin

