#!/bin/bash
VERSION=0.8.20
DIR=irssi-$VERSION

cd /tmp && wget https://github.com/irssi/irssi/releases/download/$VERSION/$DIR.tar.gz && tar xf $DIR.tar.gz && cd $DIR && ./configure && make && sudo make install

