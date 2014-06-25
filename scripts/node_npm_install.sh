#!/bin/bash
cd /tmp && git clone git://github.com/ry/node.git && cd node && ./configure && make && sudo make install

sudo npm install -g csslint jshint js-yaml claymate bower phantomjs

