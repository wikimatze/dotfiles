#!/bin/bash
VERSION=448

cd /tmp && rm -rf latexmk* && wget http://users.phys.psu.edu/%7Ecollins/software/latexmk-jcc/latexmk-$VERSION.zip && unzip latexmk-$VERSION.zip
sudo cp latexmk/latexmk.pl /usr/local/bin
sudo mv /usr/local/bin/latexmk.pl /usr/local/bin/latexmk

