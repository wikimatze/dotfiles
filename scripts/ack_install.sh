#!/bin/bash
which curl > /dev/null 2>&1
if [ $? = 1 ]; then
  echo "Curl is not installed"
  sudo apt-get install -y curl
fi

curl https://beyondgrep.com/ack-v3.5.0 > /tmp/ack && sudo mv /tmp/ack /usr/local/bin/ack && sudo chmod 777 /usr/local/bin/ack

