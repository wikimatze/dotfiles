#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget http://download.virtualbox.org/virtualbox/5.0.4/virtualbox-5.0_5.0.4-102546~Ubuntu~trusty_amd64.deb
else
  wget http://download.virtualbox.org/virtualbox/5.0.4/virtualbox-5.0_5.0.4-102546~Ubuntu~trusty_i386.deb
fi

sudo dpkg -i virtualbox-*

