#!/bin/bash
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
unset GEM_HOME
curl -sSL https://get.rvm.io | bash -s stable --ruby

rvm install ruby-1.9.3
rvm install ruby-2.0.0
rvm install ruby-2.1
rvm install ruby-2.2
rvm install ruby-2.3.1
rvm install ruby-2.4.1

