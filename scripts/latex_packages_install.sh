#!/bin/bash
DIR=$HOME/nextcloud/dotfiles/latex_package_install
DEST=/usr/share/texmf/tex/latex

sudo cp -r $DIR/lineno $DEST
sudo cp -r $DIR/picins $DEST
sudo cp -r $DIR/rechnung $DEST
sudo cp -r $DIR/stmaryrd $DEST
sudo cp -r $DIR/yfonts $DEST

sudo texhash

sudo chmod -R 777 $DEST

