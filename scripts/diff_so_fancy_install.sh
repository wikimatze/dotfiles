#!/bin/bash
DIFF_HIGHLIGHT_VERSION=d2bbb7c
cd /tmp && git clone https://github.com/git/git.git && cd git && git checkout $DIFF_HIGHLIGHT_VERSION
sudo cp contrib/diff-highlight/diff-highlight ~/bin && sudo chmod +x ~/bin/diff-highlight


DIFF_SO_FANCY_VERSION=3adf011
cd /tmp && git clone https://github.com/so-fancy/diff-so-fancy.git && cd diff-so-fancy && git checkout $DIFF_SO_FANCY_VERSION
sudo cp diff-so-fancy ~/bin && sudo chmod +x ~/bin/diff-so-fancy

