echo "Install all dependencies for neovim compilation"
sudo apt-get install -y libtool autoconf automake cmake g++ pkg-config unzip

cd /tmp && git clone https://github.com/neovim/neovim.git && cd neovim && git checkout 77a4f8f2

make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install

which ruby > /dev/null 2>&1
if [ $? = 1 ]; then
  echo "Ruby is not installed"
  exit 0;
fi

NEOVIM=$(gem list | grep neovim)
if [ "$NEOVIM" ]; then
  echo "neovim is installed, it will be updated"
  gem update neovim
else
  echo "Install neovim gem"
  gem install neovim
fi

if [ ! -d "$HOME/.config/nvim" ]; then
  echo "Cloning my config files into ~/.config/nvim"
  git clone https://github.com/wikimatze/nvim.git ~/.config/nvim
fi

echo "Updating latest python2 and python3 clients ..."

sudo pip2 install --upgrade neovim
sudo pip3 install --upgrade neovim

echo "Please open nvim and run :PlugInstall"

