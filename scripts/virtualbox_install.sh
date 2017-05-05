#!/bin/bash
VERSION=5.1.22
TIMESTAMP=115126
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget http://download.virtualbox.org/virtualbox/$VERSION/virtualbox-5.1_$VERSION-$TIMESTAMP~Ubuntu~trusty_amd64.deb
else
  wget http://download.virtualbox.org/virtualbox/$VERSION/virtualbox-5.1_$VERSION-$TIMESTAMP~Ubuntu~trusty_i386.deb
fi

sudo dpkg -i virtualbox-*

