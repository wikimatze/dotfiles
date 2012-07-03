cp -r $HOME/Dropbox/ctags-5.8 $HOME/Downloads
sudo chmod -R 777 /usr/local/bin
sudo chmod -R 777 /usr/local/share
cd $HOME/Downloads
cd ctags-5.8
./configure
make
make install
cd $HOME/Downloads
rm -rf ctags-5.8

