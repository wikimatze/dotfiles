NINE_THREE=1.9.3
TWO_ZERO=2.0

echo "Installing ruby $NINE_THREE"
/usr/local/bin/ruby-install ruby $NINE_THREE

echo "Installing ruby $TWO_ZERO"
/usr/local/bin/ruby-install ruby $TWO_ZERO

echo "Installing the latest stable ruby version"
/usr/local/bin/ruby-install ruby stable

