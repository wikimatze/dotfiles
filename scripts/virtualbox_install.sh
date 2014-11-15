#!/bin/bash
cd /tmp
if [ "$(uname -m)" == "x86_64" ]
then
  wget http://download.virtualbox.org/virtualbox/4.3.18/virtualbox-4.3_4.3.18-96516~Ubuntu~raring_amd64.deb
else
  wget http://download.virtualbox.org/virtualbox/4.3.18/virtualbox-4.3_4.3.18-96516~Ubuntu~raring_i386.deb
fi

sudo dpkg -i virtualbox-*

