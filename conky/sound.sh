#!/bin/bash
CHECK_NUMBER=4

if [ `amixer| grep "'Master',0" -A 5 | grep -c "Front Left"` -ge 1 ]; then
  CHECK_NUMBER=10
fi

if [ `amixer| grep "'Master',0" -A $CHECK_NUMBER | grep -c "\[off\]"` -ge 1 ]; then
  VERSION='𝄪'
else
  NUMBER="`amixer | grep "'Master',0" -A $CHECK_NUMBER | grep -o -m 1 -P '(\d{1,3}%)'`"
  VERSION='♬'
fi

echo "$VERSION $NUMBER"
