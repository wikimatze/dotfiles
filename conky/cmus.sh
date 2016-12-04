#!/bin/bash

if [ ! -x /usr/bin/cmus-remote ]; then
  exit
fi

Cmus_remote=$(cmus-remote -Q)
Instance=$(echo -e "$Cmus_remote" | wc -l)

if [ $Instance -gt 1 ]; then
  TITLE=`cmus-remote -Q | grep " title " | cut -c 11-`
  ARTIST=`cmus-remote -Q | grep " albumartist " | cut -c 17-`
  echo "$TITLE" - "$ARTIST"
fi

