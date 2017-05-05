#!/bin/bash
if [ `amixer| grep "'Master',0" -A 10 | grep -c "\[off\]"` -ge 1 ]; then
  VERSION='𝄪'
else
  NUMBER="`amixer | grep "'Master',0" -A 10 | grep -o -m 1 -P '(\d{1,3}%)'`"
  VERSION='♬'
fi

echo "$VERSION $NUMBER"
