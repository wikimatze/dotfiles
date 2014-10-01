#!/bin/bash
YEAR="`date +%Y`"
MONTH="`date +%b`"

DEST=/media/wm/verbatim/backups/$YEAR\_$MONTH

mkdir $DEST

tar cvf $DEST/backup.tar.zip ~/Desktop ~/Downloads ~/ownCloud ~/Dropbox

