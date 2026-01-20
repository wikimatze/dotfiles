#!/bin/bash
VERSION='v1.20.0'
rm -rf ~/.zim
git clone --recursive https://github.com/zimfw/zimfw.git ${ZDOTDIR:-${HOME}}/.zim  && cd ~/.zim && git checkout $VERSION


echo "Get tool to install modules"
wget -O ~/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh


echo "Install modules ..."
zsh ~/.zim/zimfw.zsh install

echo "Enjoy the terminal experience"

