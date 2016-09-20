#!/bin/bash
cd /tmp && git clone https://github.com/so-fancy/diff-so-fancy.git && sudo cp -R diff-so-fancy/libexec/ /usr/local/bin && sudo cp diff-so-fancy/diff-so-fancy /usr/local/bin && sudo chmod +x /usr/local/bin/diff-so-fancy

