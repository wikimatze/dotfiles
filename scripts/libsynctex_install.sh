#!/bin/bash
cd /tmp && rm -rf libsynctex*

# texlive-binaries : Depends: libsynctex1 (< 2015.20160222.37495-1.1~) but 2016.20160513.41080-6 is installed
if [ "$(uname -m)" == "x86_64" ]
then
  wget http://de.archive.ubuntu.com/ubuntu/pool/main/t/texlive-bin/libsynctex1_2015.20160222.37495-1_amd64.deb
  wget http://de.archive.ubuntu.com/ubuntu/pool/main/t/texlive-bin/libsynctex-dev_2015.20160222.37495-1_amd64.deb
else
  wget http://de.archive.ubuntu.com/ubuntu/pool/main/t/texlive-bin/libsynctex1_2015.20160222.37495-1_i386.deb
  wget http://de.archive.ubuntu.com/ubuntu/pool/main/t/texlive-bin/libsynctex-dev_2015.20160222.37495-1_i386.deb
fi

sudo dpkg -i libsynctex1* && sudo dpkg -i libsynctex-dev*

