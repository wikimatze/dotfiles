#!/bin/bash
VERSION=04bb86fa5bb82ee0443dbfe4fbef7a1739467df2
cd /tmp && git clone https://github.com/bk138/gromit-mpx && cd gromit-mpx && git checkout $VERSION
autoreconf --install && ./configure && make && sudo make install

