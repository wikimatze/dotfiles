#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://releases.hashicorp.com/vagrant/1.8.6/vagrant_1.8.6_x86_64.deb
else

  wget https://releases.hashicorp.com/vagrant/1.8.6/vagrant_1.8.6_i686.deb
fi

sudo dpkg -i vagrant*.deb

