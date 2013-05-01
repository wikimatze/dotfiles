# Create the $HOME/lib folder {{{

mkdir $HOME/Downloads

# }}}
# Get the sources {{{

curl -OL http://downloads.sourceforge.net/project/levent/libevent/libevent-2.0/libevent-2.0.21-stable.tar.gz
curl -OL http://downloads.sourceforge.net/tmux/tmux-1.8.tar.gz

tar -xvzf libevent-2.0.21-stable.tar.gz
tar -xvzf tmux-1.8.tar.gz

# }}}
# Compiling libevent {{{

cd $HOME/Downloads/libevent-2.0.21-stable && ./configure --prefix=/opt && make && sudo make install

# }}}
# Compiling tmux {{{
cd $HOME/Downloads/tmux-1.8
LDFLAGS="-L/opt/lib" CPPFLAGS="-I/opt/include" LIBS="-lresolv" ./configure --prefix=/opt && make && sudo make install

# }}}
# Move the tmux-bin file in the right directory where it can be executed {{{

sudo mv -f /opt/bin/tmux $HOME/bin/

# }}}

