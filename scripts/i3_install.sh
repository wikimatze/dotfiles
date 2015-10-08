#!/bin/bash
git clone https://github.com/i3/i3.git /tmp/i3 && cd /tmp/i3 && git checkout 4.11

sudo apt-get install libxcb1-dev
sudo apt-get install libxcb-keysyms1-dev
sudo apt-get install libxcb-util0-dev
sudo apt-get install libxcb-icccm4-dev
sudo apt-get install libyajl-dev
sudo apt-get install libstartup-notification0-dev
sudo apt-get install libxcb-randr0-dev
sudo apt-get install libev-dev
sudo apt-get install libxcb-xinerama0-dev
sudo apt-get install libpango1.0-dev
sudo apt-get install libxcursor-dev
sudo apt-get install libxcb-cursor-dev
sudo apt-get install libxcb-xkb-dev
sudo apt-get install libxkbcommon-dev
sudo apt-get install libxkbcommon-x11-dev

make && sudo make install

