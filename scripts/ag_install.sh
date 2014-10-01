#!/bin/bash
cd /tmp && git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && git checkout 0.24.1 && ./build.sh && sudo make install

