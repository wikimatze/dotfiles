#!/bin/bash
cd /tmp && git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && git checkout 2.2.0 && ./build.sh && sudo make install

