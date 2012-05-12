# Create the $HOME/lib folder {{{

mkdir $HOME/lib

# }}}
# Get the sources {{{

curl -OL https://github.com/downloads/libevent/libevent/libevent-2.0.19-stable.tar.gz
curl -OL http://downloads.sourceforge.net/tmux/tmux-1.6.tar.gz

# }}}
# Compiling libevent {{{

cd libevent-2.0.19-stable
./configure --prefix=/opt
make
sudo make install

# }}}
# Compiling tmux {{{
cd ../tmux-1.6
LDFLAGS="-L/opt/lib" CPPFLAGS="-I/opt/include" LIBS="-lresolv" ./configure --prefix=/opt
make
sudo make install

}}}
# Move the tmux-bin file in the right directory where it can be executed {{{

mv /opt/bin/tmux $HOME/bin/

# }}}
