#!/bin/bash
cd /tmp && git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && git checkout 1.0.3 && ./build.sh && sudo make install

