#!/bin/bash
if [ `amixer| grep "'Master',0" -A 4 | grep -c "\[off\]"` -eq 1 ]; then
  VERSION='𝄪'
else
  NUMBER="`amixer | grep "'Master',0" -A 4 | grep -o -m 1 -P '(\d{1,3}%)'`"
  VERSION='♬'
fi

echo "$VERSION $NUMBER"
