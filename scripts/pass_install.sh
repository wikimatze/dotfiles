#!/bin/bash
VERSION=3ca13cd8882cae4083c1c478858adbf2e82dd037
cd /tmp && rm -rf password-store && git clone https://git.zx2c4.com/password-store && cd password-store && git checkout $VERSION && sudo make install

