#!/bin/bash
# using backticks, that was the solution ;)
z=0

for i in *.jpg; do z=$[$z+1]; mv "$i" ${i##*.jpg}$z\_$1.jpg; echo $i ; done

#for i in *.jpg; do z=$[$z+1]; cp "$i" bla/`printf "%03d" $z`.jpg; echo $i ; done

#for i in *.jpg; do z=$RANDOM; mv "$i" ${i##*.jpg}$z\_$1.jpg; echo $z ; done

# format 001, 002 with great printf function
# for i in *.jpg; do z=$[$z+1]; cp "$i" bla/`printf "%03d" $z`.jpg; echo $i ; done
