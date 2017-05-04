#!/bin/bash
VERSION="v1.8.0"
git clone https://github.com/ranger/ranger.git /tmp/ranger && cd /tmp/ranger && git checkout $VERSION && sudo make install

