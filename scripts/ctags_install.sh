#!/bin/bash
cd /tmp && git clone https://github.com/fishman/ctags.git && cd ctags && autoreconf && ./configure && sudo make && sudo make install

