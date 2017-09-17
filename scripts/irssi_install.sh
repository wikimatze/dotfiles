#!/bin/bash
VERSION=1.0.4
DIR=irssi-$VERSION

cd /tmp && wget https://github.com/irssi/irssi/releases/download/$VERSION/$DIR.tar.gz && tar xf $DIR.tar.gz && cd $DIR && ./configure && make && sudo make install

