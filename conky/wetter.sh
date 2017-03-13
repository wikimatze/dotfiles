#!/bin/bash
## Purpose:         I3/Conky Wetter script
## Author:          Matthias Skaletz firstcontact@skaletz.me
## WEB:             https://www.skaletz.me/setup/wetter
## Last Modified:   Fr 2017-03-10 19:51:16 (+0100)

# Place your Location here
ORT=$(wget --quiet -O - ipinfo.io/city)

# Get Temp from wttr.in
TEMP=$(wget --quiet  -O - "http://wttr.in/$ORT?lang=de" | sed -n '2,7{s/\d27\[[0-9;]*m//g;s/^..//;s/ *$//;p}'| head -3 | tail -1 | cut -c12- )

# Get Weather
WETTER=$(wget --quiet  -O - "http://wttr.in/$ORT?lang=de" | sed -n '2,7{s/\d27\[[0-9;]*m//g;s/^..//;s/ *$//;p}'| head -2 | tail -1 | cut -c14- )
echo -n "$ORT"
echo -n ' '

if       [[ "$WETTER" =~ [Rr]egen ]];     then echo -n Regen
    elif [[ "$WETTER" =~ [Nn]ebel ]];     then echo -n Nebel
    elif [[ "$WETTER" =~ [Ss]onnig ]];    then echo -n Sonnig
    elif [[ "$WETTER" =~ [Kk]lar ]];      then echo -n klar
    elif [[ "$WETTER" =~ [Bb]ewölkt ]];   then echo -n wolken
    elif [[ "$WETTER" =~ [Bb]edeckt ]];   then echo -n bedeckt‚
fi

echo -n "$TEMP"

