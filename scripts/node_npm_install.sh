#!/bin/bash
cd /tmp && git clone https://github.com/nodejs/node.git && cd node && git checkout v4.1.1 && ./configure && make && sudo make install
sudo npm install -g csslint jshint js-yaml claymate bower phantomjs gitbook-cli
rm -rf /tmp/node

