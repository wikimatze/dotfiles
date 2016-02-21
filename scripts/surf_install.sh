#!/bin/bash

sudo apt-get install libwebkitgtk-dev

cd /tmp && git clone http://git.suckless.org/surf && cd surf && sudo make && sudo make install
rm -rf surf/

