cd ~/ownCloud/vim && git checkout v7-4-258 && git clean -f

./configure --prefix=/usr/local \
  --without-x \
  --disable-nls \
  --enable-gui=no \
  --enable-multibyte \
  --enable-rubyinterp \
  --enable-luainterp \
  --enable-pythoninterp \
  --with-python-config-dir=$HOME/lib/python2.7/config \
  --enable-gui=gnome2 \
  --with-features=huge \
  --with-tlib=ncurses \

sudo make && sudo make install && sudo make clean

