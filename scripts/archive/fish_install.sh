#!/bin/bash
cd /tmp && git clone https://github.com/fish-shell/fish-shell.git && cd fish-shell && git checkout 2.1.1
sudo autoconf && sudo ./configure && sudo make install

