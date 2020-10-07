# error: "Protocol "https" not supported or disabled in libcurl
# make sure cmake 3.2.2 is installed  (details under https://github.com/ruslo/hunter/issues/328)

VERSION="v0.3.5"

echo "Install all dependencies for neovim compilation"
sudo apt-get install -y libtool autoconf automake cmake g++ pkg-config unzip curl

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

echo "Updating latest python2 and python3 clients ..."

sudo -H pip2 install --upgrade pynvim
sudo -H pip3 install --upgrade pynvim


if [ ! -f "/usr/share/vim/vim74/rgb.txt" ]; then
  echo "The file /usr/share/vim/vim74/rgb.txt does not exists => so in ranger :e of a new file will not work"
else
  # see related issue under https://github.com/neovim/neovim/issues/6682
  sudo cp /usr/share/vim/vim74/rgb.txt /usr/local/share/nvim/runtime
fi

echo "Please open nvim and run :PlugInstall"

