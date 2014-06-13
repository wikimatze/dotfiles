#!/bin/bash
# Usage:
#  bash backup.sh <path-to-source> <dest-to-which-sync-to>
#
sudo rm out.txt
echo "" > out.txt
# -v ... increase verbosity
# -r ... recurse into directories
# -u ... skip files that are newer on the receiver
# -W ... copy whole file
# -p ... the source and receiving permissions should be the same
# -l ... preserve symlinks

sudo nice -n 19 rsync -rltDvuWz --delete --ignore-errors --exclude .Trash* "$1" "$2" 2>> out.txt

