#!/bin/bash
GIRARA_VERSION=0.2.6
POPPLER_VERSION=0.2.6
ZATHURA_VERSION=0.3.6

# otherwise the own girara compilation will not work
sudo apt-get remove libgirara-dev

# need for girara compilation
sudo apt-get install libgtk-3-dev

# need for zathura compilation
sudo apt-get install libmagic-dev

rm -rf /tmp/girara /tmp/zathura /tmp/zathura-pdf-poppler


cd /tmp && git clone https://github.com/pwmt/girara.git && cd girara && git checkout $GIRARA_VERSION && make && sudo make install
cd /tmp && git clone  https://github.com/pwmt/zathura-pdf-poppler.git && cd zathura-pdf-poppler && git checkout $POPPLER_VERSION && make & sude make install
cd /tmp && git clone https://github.com/pwmt/zathura.git && cd zathura && git checkout $ZATHURA_VERSION && make WITH_SYNCTEX=1 && sudo make install

