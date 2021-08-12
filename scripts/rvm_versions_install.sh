#!/bin/bash
rvm install ruby-2.5.1
rvm install ruby-2.6.5
rvm install ruby-2.7.2
rvm install ruby-3.0.2

exec $SHELL

rvm --default 2.7.2

