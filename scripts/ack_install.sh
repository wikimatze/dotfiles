#!/bin/bash
sudo apt-get install -y curl
sudo curl http://beyondgrep.com/ack-2.14-single-file > /usr/local/bin/ack && sudo chmod 0755 /usr/local/bin/ack

