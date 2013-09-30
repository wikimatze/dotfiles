LATEST_RUBY=2.0.0-p247
SECOND_LATEST_RUBY=1.9.3-p429
cd /tmp && git clone https://github.com/postmodern/ruby-install.git
cd ruby-install && sudo make install
echo "Done with ruby-install ..."

exec $SHELL

echo "Installing the latest stable ruby version"
ruby-install ruby $LATEST_RUBY

echo "Installing ruby $SECOND_LATEST_RUBY"
ruby-install ruby $SECOND_LATEST_RUBY

cd /tmp && git clone https://github.com/postmodern/chruby.git
cd chruby && sudo make install

echo "Done with chruby ..."
