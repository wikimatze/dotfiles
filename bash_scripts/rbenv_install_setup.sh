# Install rbenv {{{

cd $HOME
sudo rm -rf .rbenv/
cd $HOME
git clone git://github.com/sstephenson/rbenv.git .rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

# }}}
# Install rbenv-install {{{

cd $HOME/Downloads
sudo rm -rf ruby-build
git clone git://github.com/sstephenson/ruby-build.git
cd ruby-build
sudo bash install.sh

# }}}
