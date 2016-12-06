#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://launchpad.net/ubuntu/+archive/primary/+files/rofi_0.15.11-1_amd64.deb
else
  wget https://launchpad.net/ubuntu/+archive/primary/+files/rofi_0.15.11-1_i386.deb
fi

sudo dpkg -i rofi*.deb

