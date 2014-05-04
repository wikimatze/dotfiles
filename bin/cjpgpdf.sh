#!/bin/bash
# for i in *.png; do convert "$i" ${i##*.png}1.pdf; echo $i ; done
for i in *.jpg; do convert "$i" $i.pdf; done

