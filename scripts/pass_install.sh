#!/bin/bash
VERSION=1.6.5
cd /tmp && rm -rf password-store && git clone https://git.zx2c4.com/password-store && cd password-store && git checkout $VERSION && sudo make install


