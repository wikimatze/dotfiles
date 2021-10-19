#!/bin/bash
rvm install ruby-2.5.9
rvm install ruby-2.6.7
rvm install ruby-2.7.4
rvm install ruby-3.0.2

exec $SHELL

# needed for gnome-terminal
/bin/bash --login

rvm --default 2.7.4
