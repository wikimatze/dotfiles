#!/bin/bash
VERSION=5.1.28
TIMESTAMP=117968
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget http://security.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx1_1.0.0-1_amd64.deb
  wget http://download.virtualbox.org/virtualbox/$VERSION/virtualbox-5.1_$VERSION-$TIMESTAMP~Ubuntu~trusty_amd64.deb
else
  wget http://security.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx1_1.0.0-1_i386.deb
  wget http://download.virtualbox.org/virtualbox/$VERSION/virtualbox-5.1_$VERSION-$TIMESTAMP~Ubuntu~trusty_i386.deb
fi

sudo dpkg -i libvpx*
sudo dpkg -i virtualbox-*

