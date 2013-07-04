cd /tmp && git clone https://github.com/b4winckler/vim && cd vim
git co v7-3-1298

./configure --prefix=/usr/local \
  --without-x \
  --disable-nls \
  --enable-gui=no \
  --enable-luainterp \
  --enable-multibyte \
  --enable-python3interp \
  --enable-rubyinterp \
  --enable-gui=gnome2
  --with-features=huge \
  --with-mac-arch=x86_64 \
  --with-python-config-dir=$HOME/lib/config-3.3m \
  --with-tlib=ncurses \

sudo make && sudo make install && sudo make clean

