#!/bin/bash
if [ "$(uname -m)" == "x86_64" ]
then
  cd /tmp && wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64 && mv getskype-linux-beta-ubuntu-64 getskype-linux-beta-ubuntu.deb
else
  cd /tmp && wget http://www.skype.com/go/getskype-linux-beta-ubuntu-32 && mv getskype-linux-beta-ubuntu-32 getskype-linux-beta-ubuntu.deb
fi

sudo dpkg -i getskype-linux-beta-ubuntu.deb
sudo apt-get -f install
sudo dpkg -i getskype-linux-beta-ubuntu.deb

