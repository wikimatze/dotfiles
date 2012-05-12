cp -r $HOME/Dropbox/ctags-5.8 $HOME/Downloads
chmod -r 777 /usr/local/bin
chmod -r 777 /usr/local/share
cd ctags-5.8
./configure
make
make install
cd $HOME/Downloads
rm -r ctags-5.8

