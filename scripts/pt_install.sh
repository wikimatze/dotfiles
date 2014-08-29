#!/bin/bash
if [ "$(uname -m)" == "x86_64" ]
then
  cd /tmp && wget "https://drone.io/github.com/monochromegane/the_platinum_searcher/files/artifacts/bin/linux_amd64/pt"
else
  cd /tmp && wget "https://drone.io/github.com/monochromegane/the_platinum_searcher/files/artifacts/bin/linux_i386/pt"
fi

sudo mv /tmp/pt /usr/local/bin && sudo chmod 777 /usr/local/bin/pt
