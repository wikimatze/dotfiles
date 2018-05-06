#!/bin/bash
VERSION=f11bb60
git clone --recursive https://github.com/zimfw/zimfw.git ${ZDOTDIR:-${HOME}}/.zim  && cd ~/.zim && git checkout $VERSION

