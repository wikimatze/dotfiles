#!/bin/bash
cd /tmp && git clone https://github.com/nodejs/node.git && cd node && git checkout v6.5.0 && ./configure && make && sudo make install
sudo npm install -g csslint jshint js-yaml claymate bower phantomjs-prebuilt gitbook-cli diff-so-fancy karma karma-cli karma-chrome-launcher karma-ng-html2js-preprocessor jasmine-core
rm -rf /tmp/node

