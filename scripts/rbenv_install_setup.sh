# Install rbenv {{{

cd $HOME
sudo rm -rf .rbenv/
cd $HOME
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

# }}}
# Install rbenv-install {{{

mkdir -p $HOME/.rbenv/plugins
cd $HOME/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git
cd ruby-build
sudo bash install.sh

# }}}

exec $SHELL
