# error: "Protocol "https" not supported or disabled in libcurl
# make sure cmake 3.2.2 is installed  (details under https://github.com/ruslo/hunter/issues/328)

VERSION="v0.11.4"

echo "Install all dependencies for neovim compilation"
# need ruby-dev for neovim
# libtool-bin for neovim compilation
# ranger: file navigation nvim plugin
# ctags: indexing and searching nvim plugin
sudo apt-get install -y libtool autoconf automake cmake g++ pkg-config unzip curl ruby-dev libtool-bin ranger luarocks liblua5.1-0-dev
if [ ! -d "/tmp/neovim" ]; then
  cd /tmp && git clone https://github.com/neovim/neovim.git && cd neovim && git checkout $VERSION
else
  cd /tmp/neovim && git checkout $VERSION
fi

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

echo "Updating latest python3 client ..."

sudo -H pip3 install --upgrade pynvim

echo "Please open nvim and run :PlugInstall"

