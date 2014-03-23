#!/bin/bash
rm out.txt
echo "" > out.txt
# -v ... increase verbosity
# -r ... recurse into directories
# -u ... skip files that are newer on the receiver
# -W ... copy whole file
# -p ... the source and receiving permissions should be the same
# -l ... preserve symlinks

#nice -n 19 rsync -v -r -u -W -p -L -z --delete --ignore-errors --exclude .Trash* "$1" "$2" 2>> out.txt
nice -n 19 rsync -rltDvuWz --delete --ignore-errors --exclude .Trash* "$1" "$2" 2>> out.txt

