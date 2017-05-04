#!/bin/bash
VERSION=n3.3
cd /tmp && git clone https://github.com/FFmpeg/FFmpeg && cd FFmpeg && git checkout $VERSION && ./configure --disable-ffplay --disable-ffprobe --disable-ffserver --enable-libmp3lame --enable-libv4l2 --enable-libx264 --enable-libpulse --enable-gpl --enable-nonfree --disable-yasm  --extra-libs="-lasound" && make && sudo make install

