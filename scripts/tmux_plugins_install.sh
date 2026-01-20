#!/bin/bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible
git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank
git clone https://github.com/tmux-plugins/tmux-urlview ~/.tmux/plugins/tmux-urlview

# need for tmux-urlview
sudo apt-get install urlview

