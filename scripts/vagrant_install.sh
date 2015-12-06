#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb
else
  wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_i686.deb
fi

sudo dpkg -i vagrant*.deb

