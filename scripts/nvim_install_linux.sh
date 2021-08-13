# error: "Protocol "https" not supported or disabled in libcurl
# make sure cmake 3.2.2 is installed  (details under https://github.com/ruslo/hunter/issues/328)

VERSION="v0.4.4"

echo "Install all dependencies for neovim compilation"
# need ruby-dev for neovim
# libtool-bin for neovim compilation
# ranger: file navigation nvim plugin
# ctags: indexing and searching nvim plugin
sudo apt-get install -y libtool autoconf automake cmake g++ pkg-config unzip curl ruby-dev libtool-bin ranger

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


# TODO how to get latest vimxx in the script
if [ ! -f "/usr/share/vim/vim81/rgb.txt" ]; then
  echo "The file /usr/share/vim/vim81/rgb.txt does not exists => so in ranger :e of a new file will not work"
else
  # see related issue under https://github.com/neovim/neovim/issues/6682
  sudo cp /usr/share/vim/vim81/rgb.txt /usr/local/share/nvim/runtime
fi

echo "Please open nvim and run :PlugInstall"

