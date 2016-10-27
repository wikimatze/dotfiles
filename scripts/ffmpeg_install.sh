#!/bin/bash
cd /tmp && git clone git://source.ffmpeg.org/ffmpeg.git && cd ffmpeg && ./configure --disable-ffplay --disable-ffprobe --disable-ffserver --enable-libmp3lame --enable-libv4l2 --enable-libx264 --enable-x11grab --enable-libpulse --enable-librtmp --enable-gpl --enable-nonfree --disable-yasm  --extra-libs="-lasound" && make && sudo make install

