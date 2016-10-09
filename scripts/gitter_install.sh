#!/bin/bash
# grab the code from https://gitter.im/apps
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://update.gitter.im/linux64/gitter_3.1.0_amd64.deb
else
  wget https://update.gitter.im/linux32/gitter_3.1.0_i386.deb
fi

sudo dpkg -i gitter_*

