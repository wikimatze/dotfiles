# Remove back up directory and create the new one {{{

sudo rm -R $HOME/Desktop/backup
mkdir $HOME/Desktop/backup

# }}}
# Create backup folders {{{

mkdir $HOME/Desktop/backup/Chrome
mkdir $HOME/Desktop/backup/Cyberduck
mkdir $HOME/Desktop/backup/Firefox
mkdir $HOME/Desktop/backup/Omnigraffle
mkdir $HOME/Desktop/backup/Skype
mkdir $HOME/Desktop/backup/Thunderbird
mkdir $HOME/Desktop/backup/images

# }}}
# Copy the backup file into $HOME/Desktop/backup {{{

cp -r $HOME/Dropbox $HOME/Desktop/backup
cp -r $HOME/Library/Application\ Support/Cyberduck $HOME/Desktop/backup/Cyberduck
cp -r $HOME/Library/Application\ Support/Firefox $HOME/Desktop/backup/Firefox
cp -r $HOME/Library/Application\ Support/Google/Chrome $HOME/Desktop/backup/Chrome
cp -r $HOME/Library/Application\ Support/Omnigraffle $HOME/Desktop/backup/Omnigraffle
cp -r $HOME/Library/Application\ Support/Skype $HOME/Desktop/backup/Skype
cp -r $HOME/Library/Thunderbird/ $HOME/Desktop/backup/Thunderbird

# }}}

