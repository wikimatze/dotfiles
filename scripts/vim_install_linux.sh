cd ~/git-repositories/vim && git checkout v7-4-044

./configure --prefix=/usr/local \
  --without-x \
  --disable-nls \
  --enable-gui=no \
  --enable-multibyte \
  --enable-pythoninterp \
  --with-python-config-dir=$HOME/lib/python2.7/config \
  --enable-rubyinterp \
  --enable-gui=gnome2 \
  --with-features=huge \
  --with-tlib=ncurses \

sudo make && sudo make install && sudo make clean

#   --enable-python3interp \
#   --with-python3-config-dir=$HOME/lib/python3.3/config-3.3m \
