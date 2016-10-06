#!/bin/bash
if [ `pactl list | grep "Sink #0" -A 9 | grep Mute: | grep -c yes` -eq 1 ]; then
  VERSION='𝄪'
else
  NUMBER="`pactl list | grep "Sink #0" -A 9| grep -o -m 1 -P '(\d{1,2}%)' | head -1`"
  VERSION='♬'
fi

echo "$VERSION $NUMBER"
