#!/bin/bash
VERSION='1.5.4-1'
cd /tmp && rm rofi*

sudo apt-get install libxcb-ewmh2

if [ "$(uname -m)" == "x86_64" ]
then
  wget https://launchpad.net/ubuntu/+archive/primary/+files/rofi_$VERSION\_amd64.deb
else
  wget https://launchpad.net/ubuntu/+archive/primary/+files/rofi_$VERSION\_i386.deb
fi

sudo dpkg -i rofi*.deb

