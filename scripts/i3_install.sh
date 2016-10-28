#!/bin/bash
VERSION=4.12
git clone https://github.com/i3/i3.git /tmp/i3 && cd /tmp/i3 && git checkout $VERSION

sudo apt-get install -y libxcb1-dev
sudo apt-get install -y libxcb-keysyms1-dev
sudo apt-get install -y libxcb-util0-dev
sudo apt-get install -y libxcb-icccm4-dev
sudo apt-get install -y libyajl-dev
sudo apt-get install -y libstartup-notification0-dev
sudo apt-get install -y libxcb-randr0-dev
sudo apt-get install -y libev-dev
sudo apt-get install -y libxcb-xinerama0-dev
sudo apt-get install -y libpango1.0-dev
sudo apt-get install -y libxcursor-dev
sudo apt-get install -y libxcb-cursor-dev
sudo apt-get install -y libxcb-xkb-dev
sudo apt-get install -y libxkbcommon-dev
sudo apt-get install -y libxkbcommon-x11-dev

make && sudo make install

