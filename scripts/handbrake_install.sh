#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://launchpad.net/~stebbins/+archive/handbrake-releases/+files/handbrake-gtk_0.9.9ppa1~raring1_amd64.deb
else
  wget https://launchpad.net/~stebbins/+archive/handbrake-releases/+files/handbrake-gtk_0.9.9ppa1~raring1_i386.deb
fi

sudo dpkg -i handbrake*

