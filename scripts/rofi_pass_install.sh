#!/bin/bash
VERSION=2.0.2
cd /tmp && rm -rf password-store && git clone https://github.com/carnager/rofi-pass.git && cd rofi-pass && git checkout $VERSION && sudo mv rofi-pass /usr/bin && sudo chmod 777 /usr/bin/rofi-pass

