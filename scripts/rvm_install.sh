#!/bin/bash
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
unset GEM_HOME
curl -sSL https://get.rvm.io | bash -s stable --ruby

source /usr/local/rvm/scripts/rvm

