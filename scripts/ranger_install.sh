#!/bin/bash
VERSION="v1.9.3"
git clone https://github.com/ranger/ranger.git /tmp/ranger && cd /tmp/ranger && git checkout $VERSION && sudo make install

