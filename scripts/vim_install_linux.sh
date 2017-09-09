echo "Install all dependencies for vim compilation"
sudo apt-get build-dep vim -y

cd /tmp && rm -rf vim && git clone https://github.com/vim/vim && cd vim && git checkout v8.0.0692 && git clean -f

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
  --enable-python3interp \
  --with-features=huge \
  --with-tlib=ncurses \
  --with-python3-config-dir=/usr/lib/python3.4/config-3.4m-i386-linux-gnu/ \
  --enable-fail-if-missing \

sudo make && sudo make install && sudo make clean

