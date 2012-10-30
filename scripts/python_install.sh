mkdir $HOME/lib
cd $HOME/Downloads
wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2
tar xjvf Python-2.7.3.tar.bz2
cd Python-2.7.3
./configure --prefix=$HOME
make && make install
make inclinstall
hash -r

# cleanup
cd $HOME/Downloads
rm -rf Python-2.7.3

