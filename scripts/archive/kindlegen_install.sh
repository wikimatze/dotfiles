#!/bin/bash
cd /tmp
VERSION=v2_9

wget http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_$VERSION.tar.gz && tar -xzvf kindlegen_linux_2.6_i386_v2_9.tar.gz

sudo mv /tmp/kindlegen /usr/local/bin && sudo chmod 777 /usr/local/bin/kindlegen
