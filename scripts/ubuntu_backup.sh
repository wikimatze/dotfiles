#!/bin/bash
YEAR=$(date +%Y)
MONTH=$(date +%b)

DEST="/media/wm/verbatim/backups/${YEAR}_${MONTH}"

mkdir "$DEST" && cd "$DEST"

echo "" > out.txt
sudo nice -n 19 rsync -rltDvuWz --delete ~/Desktop "$DEST/" 2>> out.txt
sudo nice -n 19 rsync -rltDvuWz --delete ~/nextcloud "$DEST" 2>> out.txt
sudo nice -n 19 rsync -rltDvuWz --delete ~/Downloads "$DEST" 2>> out.txt
sudo nice -n 19 rsync -rltDvuWz --delete ~/.thunderbird "$DEST" 2>> out.txt
sudo nice -n 19 rsync -rltDvuWz --delete ~/.ssh "$DEST" 2>> out.txt
sudo nice -n 19 rsync -rltDvuWz --delete ~/.password-store "$DEST" 2>> out.txt
sudo nice -n 19 rsync -rltDvuWz --delete ~/.gnupg "$DEST" 2>> out.txt

