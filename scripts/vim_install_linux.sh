cd /tmp/vim && git checkout v7-4-307 && git clean -f
#git clone https://github.com/b4winckler/vim
./configure --prefix=/usr/local \
  --without-x \
  --disable-nls \
  --disable-netbeans \
  --enable-gui=no \
  --enable-multibyte \
  --enable-rubyinterp \
  --enable-luainterp \
  --enable-pythoninterp \
  --with-features=huge \
  --with-tlib=ncurses \
  --enable-fail-if-missing \

sudo make && sudo make install && sudo make clean

