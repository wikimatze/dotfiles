#!/bin/bash
# grab the code from https://gitter.im/apps
VERSION='5.0.1'
cd /tmp
wget https://update.gitter.im/linux64/gitter_"$VERSION"_amd64.deb

sudo dpkg -i gitter_*

