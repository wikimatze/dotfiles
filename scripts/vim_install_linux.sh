cd /tmp
git clone https://github.com/b4winckler/vim
cd vim
git co v7-3-1070

./configure --prefix=/usr/local \
  --enable-gui=no \
  --without-x \
  --disable-nls \
  --with-tlib=ncurses \
  --enable-multibyte \
  --enable-rubyinterp \
  --enable-python3interp \
  --enable-luainterp \
  --with-python-config-dir=$HOME/lib/config-3.3m \
  --with-mac-arch=x86_64 \
  --with-features=huge \
  --enable-gui=gnome2

sudo make && sudo make install && sudo make clean
cd /tmp && rm -rf vim
