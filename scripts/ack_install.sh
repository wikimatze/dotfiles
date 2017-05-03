#!/bin/bash
which curl > /dev/null 2>&1
if [ $? = 1 ]; then
  echo "Curl is not installed"
  sudo apt-get install -y curl
fi

curl https://beyondgrep.com/ack-2.18-single-file > ~/bin/ack && sudo chmod 0755 ~/bin/ack

