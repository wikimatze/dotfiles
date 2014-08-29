#!/bin/bash

if [ "$(uname -m)" == "x86_64" ]
then
  echo "AMD"
  cd /tmp && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb
else
  echo "Intel"
  cd /tmp && wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb && sudo dpkg -i google-chrome-stable_current_i386.deb
fi

