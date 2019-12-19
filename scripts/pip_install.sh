#!/bin/bash

# get old pip
# https://pip.pypa.io/en/stable/installing/
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py

# get pip3
sudo apt install python3-pip -y 

sudo pip install --upgrade pip
sudo pip3 install --upgrade pip

sudo pip install docutils # need for previm
sudo pip3 install docutils # need for previm

# See the funny https://github.com/chrisallenlane/cheat
sudo pip install cheat
sudo pip3 install cheat

# Neovim needs python
sudo pip install neovim
sudo pip3 install neovim

