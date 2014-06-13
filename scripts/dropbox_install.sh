#!/bin/bash
if [ "$(uname -m)" == "x86_64" ]
then
  cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
else
  cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -
fi

~/.dropbox-dist/dropboxd

