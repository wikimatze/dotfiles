#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://github.com/jingweno/gh/releases/download/v2.1.0/gh_2.1.0_amd64.deb
else
  wget https://github.com/jingweno/gh/releases/download/v2.1.0/gh_2.1.0_i386.deb
fi

sudo dpkg -i gh_*

