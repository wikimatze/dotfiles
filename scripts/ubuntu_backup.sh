#!/bin/bash
YEAR="`date +%Y`"
MONTH="`date +%b`"

DATE=$YEAR\_$MONTH
DEST=/media/wm/verbatim/backups/$DATE

rm -rf $HOME/Desktop/$DATE
mkdir $HOME/Desktop/$DATE


tar czpvf $DEST/desktop.tar.zip ~/Desktop
tar czpvf $DEST/ownCloud.tar.zip ~/ownCloud
tar czpvf $DEST/downloads.tar.zip ~/Downloads
tar czpvf $DEST/dropbox.tar.zip ~/Dropbox

