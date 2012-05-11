/home/helex/.bashrc#!/bin/bash
# using backticks, that was the solution ;)
z=`ls | wc -l`
z=0

for i in *.gif; do z=$[$z+1]; mv "$i" ${i##*.gif}$z\_$1.gif; echo $i ; done

