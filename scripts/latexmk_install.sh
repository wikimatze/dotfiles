#!/bin/bash
VERSION=488

cd /tmp
rm -rf latexmk*
wget https://www.cantab.net/users/johncollins/latexmk/latexmk-$VERSION.zip
unzip latexmk-$VERSION.zip
sudo mv latexmk/latexmk.pl /usr/local/bin/latexmk
sudo chmod +x /usr/local/bin/latexmk

