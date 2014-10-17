#!/bin/bash
# Removing links {{{
# Directory links {{{
DIR=$HOME/ownCloud

rm -f $HOME/bitbucket
rm -f $HOME/latex
rm -f $HOME/presentations
rm -f $HOME/.fonts
rm -f $HOME/.zsh
rm -f $HOME/.gnupg
rm -f $HOME/.ssh
rm -f -R $HOME/.config/Terminal

# }}}
# Bash files {{{

rm -f $HOME/.bash_profile
rm -f $HOME/.bashrc
rm -f $HOME/.convert
rm -f $HOME/.functions
rm -f $HOME/.latex_convert_aliases
rm -f $HOME/.miscellaneous
rm -f $HOME/.program_aliases_linux
rm -f $HOME/.program_aliases_mac

# }}}
# Miscellaneous {{{

rm -f $HOME/.ackrc
rm -f $HOME/.fasd
rm -f $HOME/.gemrc
rm -f $HOME/.gitconfig
rm -f $HOME/.gitignore
rm -f $HOME/.gitk
rm -f $HOME/.irbrc
rm -f $HOME/.irssi
rm -f $HOME/.ptignore
rm -f $HOME/.tigrc
rm -f $HOME/.tmux.conf
rm -f $HOME/.vimperatorrc
rm -f $HOME/.zsh_history
rm -f $HOME/.zshrc

# }}}
# Bin files {{{

sudo rm -f /usr/local/bin/battery
sudo rm -f /usr/local/bin/cjpgpdf.sh
sudo rm -f /usr/local/bin/cpngpdf.sh
sudo rm -f /usr/local/bin/crushjpg.sh
sudo rm -f /usr/local/bin/crushpng.sh
sudo rm -f /usr/local/bin/giffnaming.sh
sudo rm -f /usr/local/bin/jnaming.sh
sudo rm -f /usr/local/bin/jsmall.sh
sudo rm -f /usr/local/bin/pnaming.sh
sudo rm -f /usr/local/bin/psmall.sh
sudo rm -f /usr/local/bin/waterproof.sh

# }}}
# }}}
# Directories links {{{

ln -sf $DIR/bitbucket $HOME/bitbucket
ln -sf $DIR/documents/gnupg $HOME/.gnupg
ln -sf $DIR/documents/ssh $HOME/.ssh
ln -sf $DIR/dotfiles/config/Terminal $HOME/.config/Terminal
ln -sf $DIR/dotfiles/fonts $HOME/.fonts
ln -sf $DIR/dotfiles/zsh $HOME/.zsh
ln -sf $DIR/latex $HOME/latex

# }}}
# Bash files {{{

if [ "$OSTYPE" == "linux-gnu" ]
then
  ln -sf $DIR/dotfiles/bashrc $HOME/.bashrc
  ln -sf $DIR/dotfiles/functions_linux $HOME/.functions_linux
  sudo rm -f /etc/wpa_supplicant.conf
  rm -f $HOME/.thunderbird
  ln -sf $HOME/Dropbox/Thunderbird $HOME/.thunderbird
elif [ "$OSTYPE" == "darwin10.0" ]
then
  ln -sf $DIR/dotfiles/bashrc $HOME/.bash_profile
  rm -f $HOME/Library/Thunderbird
  ln -sf $HOME/Dropbox/Thunderbird $HOME/Library/Thunderbird
fi

ln -sf $DIR/dotfiles/convert $HOME/.convert
ln -sf $DIR/dotfiles/functions $HOME/.functions
ln -sf $DIR/dotfiles/latex_convert_aliases $HOME/.latex_convert_aliases
ln -sf $DIR/dotfiles/miscellaneous $HOME/.miscellaneous
ln -sf $DIR/dotfiles/program_aliases_linux $HOME/.program_aliases_linux
ln -sf $DIR/dotfiles/program_aliases_mac $HOME/.program_aliases_mac

# }}}
# Miscellaneous {{{

ln -sf $DIR/dotfiles/ackrc $HOME/.ackrc
ln -sf $DIR/dotfiles/gemrc $HOME/.gemrc
ln -sf $DIR/dotfiles/gitconfig $HOME/.gitconfig
ln -sf $DIR/dotfiles/ptignore $HOME/.ptignore
ln -sf $DIR/dotfiles/gitignore $HOME/.gitignore
ln -sf $DIR/dotfiles/gitk $HOME/.gitk
ln -sf $DIR/dotfiles/irbrc $HOME/.irbrc
ln -sf $DIR/dotfiles/irssi $HOME/.irssi
ln -sf $DIR/dotfiles/tigrc $HOME/.tigrc
ln -sf $DIR/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $DIR/dotfiles/vimperatorrc $HOME/.vimperatorrc
ln -sf $DIR/dotfiles/zshrc $HOME/.zshrc
ln -sf $DIR/zsh_history $HOME/.zsh_history
ln -sf $DIR/fasd $HOME/.fasd

# }}}
# Bin files {{{

sudo ln -sf $DIR/dotfiles/bin/battery /usr/local/bin/battery
sudo ln -sf $DIR/dotfiles/bin/cjpgpdf.sh /usr/local/bin/cjpgpdf.sh
sudo ln -sf $DIR/dotfiles/bin/cpngpdf.sh /usr/local/bin/cpngpdf.sh
sudo ln -sf $DIR/dotfiles/bin/crushjpg.sh /usr/local/bin/crushjpg.sh
sudo ln -sf $DIR/dotfiles/bin/crushpng.sh /usr/local/bin/crushpng.sh
sudo ln -sf $DIR/dotfiles/bin/giffnaming.sh /usr/local/bin/giffnaming.sh
sudo ln -sf $DIR/dotfiles/bin/jnaming.sh /usr/local/bin/jnaming.sh
sudo ln -sf $DIR/dotfiles/bin/jsmall.sh /usr/local/bin/jsmall.sh
sudo ln -sf $DIR/dotfiles/bin/pnaming.sh /usr/local/bin/pnaming.sh
sudo ln -sf $DIR/dotfiles/bin/psmall.sh /usr/local/bin/psmall.sh
sudo ln -sf $DIR/dotfiles/bin/waterproof.sh /usr/local/bin/waterproof.sh

# }}}
