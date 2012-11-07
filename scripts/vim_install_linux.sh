cd $HOME/Downloads
git clone https://github.com/b4winckler/vim
cd vim
git tag -l
git co v7-3-645

./configure --prefix=/usr/local \
  --enable-gui=no \
  --without-x \
  --disable-nls \
  --with-tlib=ncurses \
  --enable-multibyte \
  --enable-rubyinterp \
  --enable-pythoninterp \
  --with-python-config-dir=$HOME/lib/python2.7/config/ \
  --with-mac-arch=x86_64 \
  --with-features=huge \
  --enable-gui=gnome2

sudo make
sudo make install
sudo make clean
rm -rf vim

