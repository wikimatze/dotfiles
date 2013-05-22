cd /tmp
wget http://www.python.org/ftp/python/3.3.1/Python-3.3.1.tar.bz2
tar xjvf Python-3.3.1.tar.bz2
cd Python-3.3.1
./configure --prefix=$HOME
make && make install
make inclinstall
hash -r

# cleanup
cd /tmp
rm -rf Python-3.3.1

