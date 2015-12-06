#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://launchpad.net/~stebbins/+archive/ubuntu/handbrake-releases/+files/handbrake-gtk_0.10.2ppa1%7Etrusty1_amd64.deb
else
  wget https://launchpad.net/~stebbins/+archive/ubuntu/handbrake-releases/+files/handbrake-gtk_0.10.2ppa1%7Etrusty1_i386.deb
fi

sudo dpkg -i handbrake*

