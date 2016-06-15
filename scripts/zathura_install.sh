#!/bin/bash
GIRARA_VERSION=0.2.6
# need this old version form vim backward/forward search
ZATHURA_VERSION=0.3.6

rm -rf /tmp/girara /tmp/zathura

cd /tmp && git clone https://git.pwmt.org/pwmt/girara.git && cd girara && git checkout $GIRARA_VERSION && make && sudo make install
cd /tmp && git clone https://git.pwmt.org/pwmt/zathura.git && cd zathura && git checkout $ZATHURA_VERSION && make WITH_SYNCTEX=1 && sudo make install

