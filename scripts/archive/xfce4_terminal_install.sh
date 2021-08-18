#!/bin/bash
sudo apt-get install -y libvte-dev libgnomeui-dev libxfce4ui-1-dev xfce4-dev-tools libvte-2.91-dev libxfce4ui-2-dev xfce4-dev-tools

rm -rf /tmp/xfce4-terminal
# Credits: https://forum.xfce.org/viewtopic.php?id=9297
git clone git://git.xfce.org/apps/xfce4-terminal /tmp/xfce4-terminal && cd /tmp/xfce4-terminal && git checkout xfce4-terminal-0.8.0

./autogen.sh \
  --prefix=/usr \
  --sysconfdir=/etc \
  --libexecdir=/usr/lib/xfce4 \
  --localstatedir=/var \
  --disable-static \

sudo make install

