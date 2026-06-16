#!/bin/bash
VERSION=4.17

echo "Install i3 relevant packages ..."

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

sudo apt-get install -y i3-wm    # get the basic window manager
sudo apt-get install -y i3status # get the basic window manager
sudo apt-get install -y i3lock   # for the lock screen
sudo apt-get install -y dmenu    # install the program launcher

sudo apt-get install -y lxappearance
sudo apt-get install -y feh  # opens a small window and display the image

sudo apt-get install -y libxcb-xrm-dev # for next i3 version, this package is needed
sudo apt-get install -y libxcb-shape0-dev # for next i3 version, this package is needed

echo "... done!"

git clone https://github.com/i3/i3.git /tmp/i3 && cd /tmp/i3 && git checkout $VERSION

echo "done with cloning"

autoreconf --force --install && ./configure

cd /tmp/i3/x86_64-pc-linux-gnu && make -j8 && sudo make install


