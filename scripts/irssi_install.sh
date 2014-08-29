#!/bin/bash

IRSSI=irssi-0.8.16.tar.gz
IRSSIDIR=irssi-0.8.16

cd /tmp && wget http://www.irssi.org/files/$IRSSI && tar -xvf $IRSSI && cd $IRSSIDIR && ./configure && make && sudo make install

