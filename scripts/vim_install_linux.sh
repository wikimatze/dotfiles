echo "Install all dependencies for vim compilation"
sudo apt-get build-dep vim

cd /tmp && git clone https://github.com/vim/vim && cd vim && git checkout v7.4.2285 && git clean -f

echo "Install xclip for better copy/paste"
sudo apt-get install xclip

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

