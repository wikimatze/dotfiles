#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget http://download.virtualbox.org/virtualbox/5.1.8/virtualbox-5.1_5.1.8-111374~Ubuntu~yakkety_amd64.deb
else
  wget http://download.virtualbox.org/virtualbox/5.1.8/virtualbox-5.1_5.1.8-111374~Ubuntu~yakkety_i386.deb
fi

sudo dpkg -i virtualbox-*

