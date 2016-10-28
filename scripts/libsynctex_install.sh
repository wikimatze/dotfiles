#!/bin/bash
cd /tmp && rm -rf libsynctex*

if [ "$(uname -m)" == "x86_64" ]
then
  wget http://de.archive.ubuntu.com/ubuntu/pool/main/t/texlive-bin/libsynctex1_2016.20160513.41080-6_amd64.deb
  wget http://de.archive.ubuntu.com/ubuntu/pool/main/t/texlive-bin/libsynctex-dev_2016.20160513.41080-6_amd64.deb
else
  wget http://de.archive.ubuntu.com/ubuntu/pool/main/t/texlive-bin/libsynctex1_2016.20160513.41080-6_i386.deb
  wget http://de.archive.ubuntu.com/ubuntu/pool/main/t/texlive-bin/libsynctex-dev_2016.20160513.41080-6_i386.deb
fi

sudo dpkg -i libsynctex1* && sudo dpkg -i libsynctex-dev*

