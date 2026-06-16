#!/bin/bash
VERSION=37c4c862deb133a85b7d72989acfdbd2ef16b8ad

sudo apt-get install xdotool


cd /tmp && rm -rf password-store && git clone https://github.com/carnager/rofi-pass.git && cd rofi-pass && git checkout $VERSION && sudo mv rofi-pass /usr/bin && sudo chmod 777 /usr/bin/rofi-pass

