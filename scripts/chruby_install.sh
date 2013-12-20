SECOND_LATEST_RUBY=1.9.3-p484
cd /tmp && rm -rf ruby-install && git clone https://github.com/postmodern/ruby-install.git
cd ruby-install && sudo make install
echo "Done with ruby-install ..."

echo "Installing the latest stable ruby version"
/usr/local/bin/ruby-install ruby stable

echo "Installing ruby $SECOND_LATEST_RUBY"
/usr/local/bin/ruby-install ruby $SECOND_LATEST_RUBY

echo "Done with installing ruby versions"

cd /tmp && rm -rf chruby && git clone https://github.com/postmodern/chruby.git
cd chruby && sudo make install

echo "Done with chruby ..."
