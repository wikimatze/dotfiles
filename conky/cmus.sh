#!/bin/bash

if [ ! -x /usr/bin/cmus-remote ]; then
  exit
fi

Cmus_remote=$(cmus-remote -Q)
Instance=$(echo -e "$Cmus_remote" | wc -l)
STREAM=`cmus-remote -Q | grep -c "stream "`


if [ $Instance -gt 1 ]; then
  if [ $STREAM -eq 1 ]; then
    STREAM=`cmus-remote -Q | grep "stream " | cut -c 8-`
    echo $STREAM
  else
    TITLE=`cmus-remote -Q | grep " title " | cut -c 11-`
    ARTIST=`cmus-remote -Q | grep " albumartist " | cut -c 17-`
    echo "$TITLE" - "$ARTIST"
  fi
fi

