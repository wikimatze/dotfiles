#!/bin/bash
VERSION='1.5.4-1'

ARCH=$([ "$(uname -m)" = "x86_64" ] && echo amd64 || echo i386)

URL="https://launchpad.net/ubuntu/+archive/primary/+files/rofi_${VERSION}_${ARCH}.deb"

cd /tmp
wget -O rofi.deb "$URL"
sudo apt install -y ./rofi.deb

