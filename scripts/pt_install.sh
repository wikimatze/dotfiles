#!/bin/bash
cd /tmp
VERSION=v2.1.4

if [ "$(uname -m)" == "x86_64" ]
then
  wget https://github.com/monochromegane/the_platinum_searcher/releases/download/$VERSION/pt_linux_amd64.tar.gz && for pt in *.tar.gz; do tar -xzvf $pt; done;
  mv pt_linux_amd64 pt
else
  wget https://github.com/monochromegane/the_platinum_searcher/releases/download/$VERSION/pt_linux_386.tar.gz && for pt in *.tar.gz; do tar -xzvf $pt; done;
  mv pt_linux_386 pt
fi

sudo mv /tmp/pt/pt /usr/local/bin && sudo chmod 777 /usr/local/bin/pt
