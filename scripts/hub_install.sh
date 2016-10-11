#!/bin/bash
VERSION=2.2.9
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget https://github.com/github/hub/releases/download/v$VERSION/hub-linux-amd64-$VERSION.tgz
  tar -xzvf hub-linux-amd64-$VERSION.tgz && sudo mv hub-linux-amd64-$VERSION/bin/hub /usr/local/bin
else
  wget https://github.com/github/hub/releases/download/v$VERSION/hub-linux-386-$VERSION.tgz
  tar -xzvf hub-linux-386-$VERSION.tgz && sudo mv hub-linux-386-$VERSION/bin/hub /usr/local/bin
fi

