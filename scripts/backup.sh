#!/bin/bash
# Usage:
#  bash backup.sh <path-to-source> <dest-to-which-sync-to>
#
sudo rm out.txt
echo "" > out.txt
# -a ... archive mode; equals -rlptgoD
# -r ... recurse into directories
# -l ... preserve symlinks
# -p ... the source and receiving permissions should be the same
# -t ... preserve modified time
# -g ... preserve group
# -o ... preserve owner
# -D ... preserve device files (e.g. symbolic links)
# -W ... copy whole file
# -z ... compress file data during the transfer
# -P ... keep partially transferred files

sudo nice -n 19 rsync -aWzPv --delete --ignore-errors --exclude .Trash* "$1" "$2" 2>> out.txt

