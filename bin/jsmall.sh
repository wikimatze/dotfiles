#!/bin/bash

# 1. take all the images in the actuall order and move them into image_processing and make an backup of them under origin/
cp *.jpg ~/image_processing/origin

# 2. got to the folder where the images are
cd ~/image_processing

# 3. scaling the images and move them into small
for datei in *.jpg ; do convert -resize 800x600 "$datei" "small/$datei" ; done

# 4. remove the images
#rm *.jpg *.jpeg *.JPG *.png *.PNG

