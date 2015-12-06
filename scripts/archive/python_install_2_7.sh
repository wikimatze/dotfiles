cd /tmp
wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2
tar xjvf Python-2.7.3.tar.bz2
cd Python-2.7.3
./configure --prefix=$HOME
sudo make && make install
sudo make inclinstall
hash -r

# cleanup
cd /tmp
rm -rf Python-2.7.3

