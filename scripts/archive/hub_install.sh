#!/bin/bash
if [ "$(uname -m)" == "x86_64" ]
  VERSION=hub-linux-amd64-2.2.1
then
  VERSION=hub-linux-386-2.2.1
fi

cd /tmp && wget https://github.com/github/hub/releases/download/v2.2.1/$VERSION.tar.gz
tar -zxvf $VERSION.tar.gz && sudo mv $VERSION/hub /usr/local/bin
rm -rf /tmp/hub*

