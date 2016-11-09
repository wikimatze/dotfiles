#!/bin/bash

cd /tmp && git clone https://github.com/bk138/gromit-mpx && cd gromit-mpx && autoreconf --install && ./configure && make && sudo make install

