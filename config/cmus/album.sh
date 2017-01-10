ALBUM_PATH=/$(cmus-remote -Q | grep file | cut -d'/' --complement -s -f1 | rev | cut -d'/' --complement -s -f1 | rev | sed -e 's/\s/\\ /g' | sed -e 's/(/\\(/g' | sed -e 's/)/\\)/g')/cover.jpg
ALBUM_NAME=$(cmus-remote -Q | grep -w 'tag album' | cut -d'~' --complement -f1 | cut -d' ' --complement -s -f1 | sed -e 's/\s/-/g')
echo "$ALBUM_PATH"
echo "$ALBUM_NAME"

eval notify-send -i $ALBUM_PATH $ALBUM_NAME
