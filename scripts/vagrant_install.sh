#!/bin/bash
VERSION=1.9.4
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://releases.hashicorp.com/vagrant/$VERSION/vagrant_"$VERSION"_x86_64.deb
else
  wget https://releases.hashicorp.com/vagrant/$VERSION/vagrant_"$VERSION"_i686.deb
fi

sudo dpkg -i vagrant*.deb

