echo "Install all dependencies for neovim compilation"
sudo apt-get install libtool libtool-bin autoconf automake cmake g++ pkg-config unzip

cd /tmp && git clone https://github.com/neovim/neovim.git && cd neovim && git checkout 77a4f8f235901778d889aed7c708e1608eac25f6

make && sudo make install

