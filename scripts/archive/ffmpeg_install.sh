#!/bin/bash
VERSION=n3.1.10

sudo apt-get build-dep -y ffmpeg

cd /tmp && rm -rf FFmpeg && git clone https://github.com/FFmpeg/FFmpeg && cd FFmpeg && git checkout $VERSION && ./configure --disable-ffplay --disable-ffprobe --disable-ffserver --enable-libmp3lame --enable-libx264 --enable-libpulse --enable-gpl --enable-nonfree --disable-yasm  --extra-libs="-lasound" && make && sudo make install

