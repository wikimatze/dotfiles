#!/bin/bash
# using backticks, that was the solution ;)
z=`ls | wc -l`
z=0

for i in *.png; do z=$[$z+1]; mv "$i" ${i##*.png}$z\_$1.png; echo $i ; done
