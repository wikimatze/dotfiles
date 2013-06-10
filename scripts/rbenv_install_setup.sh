# Install rbenv {{{

cd $HOME && sudo rm -rf .rbenv/
cd $HOME && git clone https://github.com/sstephenson/rbenv.git .rbenv

# }}}
# Install rbenv-install {{{

mkdir -p $HOME/.rbenv/plugins
cd $HOME/.rbenv/plugins && git clone https://github.com/sstephenson/ruby-build.git
cd ruby-build && sudo bash install.sh

# }}}
# Install rbenv-binstubs {{{
# just type bundle install --binstubs and it will create bin directory
# you have never type again bundle
cd $HOME/.rbenv/plugins && git clone https://github.com/ianheggie/rbenv-binstubs.git

# }}}

exec $SHELL
