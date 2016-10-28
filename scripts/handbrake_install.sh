#!/bin/bash
cd /tmp && rm -rf handbrake*
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://launchpad.net/~stebbins/+archive/ubuntu/handbrake-releases/+files/handbrake-gtk_0.10.5-zhb-1ppa1~xenial1_amd64.deb
else
  wget https://launchpad.net/~stebbins/+archive/ubuntu/handbrake-releases/+files/handbrake-gtk_0.10.5-zhb-1ppa1~xenial1_i386.deb
fi

sudo dpkg -i handbrake*

