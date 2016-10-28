#!/bin/bash
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install skype

