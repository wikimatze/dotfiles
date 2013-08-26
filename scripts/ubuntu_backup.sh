# Remove back up directory and create the new one {{{

mkdir $HOME/Desktop/backup

# }}}
# Copy the backup file into $HOME/Desktop/backup {{{

cp -r  $HOME/Desktop $HOME/Downloads
mv     $HOME/Downloads/Desktop $HOME/Desktop/backup
rm -rf $HOME/Download/Desktop
cp -r  $HOME/Downloads $HOME/Desktop/backup
cp -r  $HOME/Dropbox $HOME/Desktop/backup

# }}}

