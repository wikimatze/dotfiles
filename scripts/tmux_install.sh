# Create the $HOME/lib folder {{{

cd /tmp

# }}}
# Get the sources {{{

curl -OL http://downloads.sourceforge.net/project/levent/libevent/libevent-2.0/libevent-2.0.21-stable.tar.gz
tar -xvzf libevent-2.0.21-stable.tar.gz &&

# }}}
# Compiling libevent {{{

cd /tmp/libevent-2.0.21-stable && ./configure --prefix=/opt && make && sudo make install

# }}}
# Compiling tmux {{{
cd /tmp && git clone git://git.code.sf.net/p/tmux/tmux-code tmux
cd /tmp/tmux && git checkout 1.9a
bash autogen.sh
LDFLAGS="-L/opt/lib" CPPFLAGS="-I/opt/include" LIBS="-lresolv" ./configure --prefix=/opt && make && sudo make install

# }}}
# Move the tmux-bin file in the right directory where it can be executed {{{

sudo mv -f /opt/bin/tmux $HOME/bin/

# }}}

