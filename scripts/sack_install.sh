#!/bin/bash

if [ "$(uname -m)" == "x86_64" ]
then
  mkdir -p $HOME/bin && curl -sSL https://github.com/zph/go-sack/raw/master/src/install | bash -s
else
  cd /tmp && git clone https://github.com/sampson-chen/sack.git && cd sack && chmod +x install_sack.sh && ./install_sack.sh
fi

