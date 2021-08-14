#!/bin/bash
VERSION=zsh-5.8
cd /tmp && git clone https://github.com/zsh-users/zsh.git && cd zsh && git checkout $VERSION
./Util/preconfig && ./configure && make && sudo make install

