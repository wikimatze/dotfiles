cd /tmp && git clone https://github.com/vim-jp/vim.git && cd vim && git checkout v7-4-560 && git clean -f

./configure --prefix=/usr/local \
  --with-x \
  --disable-nls \
  --disable-netbeans \
  --enable-gui \
  --enable-multibyte \
  --enable-rubyinterp \
  --enable-luainterp \
  --enable-pythoninterp \
  --with-features=huge \
  --with-tlib=ncurses \
  --enable-fail-if-missing \

sudo make && sudo make install && sudo make clean

