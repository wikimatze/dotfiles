#!/bin/bash

# create directory pngcrush
rm -rf pngcrush
mkdir pngcrush

# iterate through all
for i in *.png; do pngcrush -rem alla -brute -reduce $i pngcrush/$i; done

# -rem alla: remove all chunks of the image
# -brute: try more than 100 different functions for optimization
# -reduce: try to remove the number of colors in the palette, if possible
