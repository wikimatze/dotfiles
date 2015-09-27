#!/bin/bash
if [ "$(uname -m)" == "x86_64" ]
then
  echo "AMD"
  cd /tmp && wget http://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/1.8.3/xampp-linux-x64-1.8.3-4-installer.run
else
  echo "Intel"
  cd /tmp && wget http://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/1.8.3/xampp-linux-1.8.3-4-installer.run
fi

sudo chmod 755 xampp-linux-*-installer.run && sudo ./xampp-linux-*-installer.run

