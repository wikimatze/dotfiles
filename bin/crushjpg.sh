#!/bin/bash

# create directory pngcrush
rm -rf jpgcrush
mkdir jpgcrush

# iterate through all
for i in *.jpg; do jpegtran -copy none -optimize $i > jpgcrush/$i; done

# -copy none: no meta information should be carried over
# -optimize: optimize the Huffman tables used for compression
