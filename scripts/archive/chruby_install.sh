#!/bin/bash
cd /tmp && rm -rf ruby-install && git clone https://github.com/postmodern/ruby-install.git
cd ruby-install && git checkout v0.5.0 && sudo make install
echo "Done with ruby-install ..."

cd /tmp && rm -rf chruby && git clone https://github.com/postmodern/chruby.git
cd chruby && sudo make install

echo "Done with chruby ..."

exec $SHELL

