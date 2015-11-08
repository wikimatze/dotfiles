#!/bin/bash

# install curse dependencies
sudo apt-get install -y libevent-dev libncurses-dev pkg-config

# install xsel (for copy/paste)
sudo apt-get install -y xsel

cd /tmp && curl -OL http://downloads.sourceforge.net/project/levent/libevent/libevent-2.0/libevent-2.0.21-stable.tar.gz && tar -xvzf libevent-2.0.21-stable.tar.gz && cd /tmp/libevent-2.0.21-stable && ./configure --prefix=/opt && make && sudo make install

# Compiling tmux
cd /tmp && git clone https://github.com/tmux/tmux.git tmux
cd /tmp/tmux && git checkout 2.1
bash autogen.sh
LDFLAGS="-L/opt/lib" CPPFLAGS="-I/opt/include" LIBS="-lresolv" ./configure --prefix=/opt && make && sudo make install

# Move the tmux-bin file in the right directory where it can be executed

sudo mv -f /opt/bin/tmux /usr/local/bin

