cd /tmp wget -O ruby-install-0.3.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.3.0.tar.gz
tar -xzvf ruby-install-0.3.0.tar.gz
cd ruby-install-0.3.0/
sudo make install

echo "Installing ruby-install done ..."
exec $SHELL
echo "Installing the latest stable ruby version"
ruby-build ruby

SECOND_LATEST_RUBY=1.9.3-p429
echo "Installing ruby $SECOND_LATEST_RUBY"
ruby-install ruby $SECOND_LATEST_RUBY

cd /tmp && wget -O chruby-0.3.7.tar.gz https://github.com/postmodern/chruby/archive/v0.3.7.tar.gz
tar -xzvf chruby-0.3.7.tar.gz
cd chruby-0.3.7/
sudo make install
