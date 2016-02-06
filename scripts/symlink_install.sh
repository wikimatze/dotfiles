#!/bin/bash
# Removing links {{{
# Directory links {{{
DIR=$HOME/ownCloud
DOTFILES=$HOME/git/dotfiles

rm -f $HOME/latex
rm -f $HOME/.fonts
rm -f $HOME/.zsh
rm -rf $HOME/.gnupg
rm -rf $HOME/.ssh
rm -f -R $HOME/.config/Terminal
rm -rf $HOME/.i3

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
rm -f $HOME/.config/fish
rm -f $HOME/.fasd
rm -f $HOME/.gemrc
rm -f $HOME/.gitconfig
rm -f $HOME/.gitignore
rm -f $HOME/.gitk
rm -f $HOME/.irbrc
rm -f $HOME/.irssi
rm -f $HOME/.profile
rm -f $HOME/.ptignore
rm -f $HOME/.tigrc
rm -f $HOME/.tmux.conf
rm -f $HOME/.vimperatorrc
rm -f $HOME/.zsh_history
rm -f $HOME/.zshrc
rm -f $HOME/.Xmodmap
rm -f $HOME/.zpreztorc
rm -f $HOME/.zprezto/modules/prompt/functions/prompt_wikimatze_setup
sudo rm -f /etc/default/apport

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
sudo rm -f /usr/local/bin/ttyconcat

# }}}
# }}}
# Directories links {{{

ln -sf $DIR/documents/gnupg $HOME/.gnupg
ln -sf $DIR/documents/ssh $HOME/.ssh
ln -sf $DOTFILES/config/Terminal $HOME/.config/Terminal
ln -sf $DOTFILES/fonts $HOME/.fonts
ln -sf $DOTFILES/zsh $HOME/.zsh
ln -sf $DOTFILES/i3 $HOME/.i3
ln -sf $DIR/latex $HOME/latex

# }}}
# Bash files {{{

if [ "$OSTYPE" == "linux-gnu" ]
then
  ln -sf $DOTFILES/bashrc $HOME/.bashrc
  ln -sf $DOTFILES/functions_linux $HOME/.functions_linux
  sudo rm -f /etc/wpa_supplicant.conf
elif [ "$OSTYPE" == "darwin10.0" ]
then
  ln -sf $DOTFILES/bashrc $HOME/.bash_profile
fi

ln -sf $DOTFILES/convert $HOME/.convert
ln -sf $DOTFILES/functions $HOME/.functions
ln -sf $DOTFILES/latex_convert_aliases $HOME/.latex_convert_aliases
ln -sf $DOTFILES/miscellaneous $HOME/.miscellaneous
ln -sf $DOTFILES/program_aliases_linux $HOME/.program_aliases_linux
ln -sf $DOTFILES/program_aliases_mac $HOME/.program_aliases_mac

# }}}
# Miscellaneous {{{

ln -sf $DOTFILES/ackrc $HOME/.ackrc
ln -sf $DOTFILES/gemrc $HOME/.gemrc
ln -sf $DOTFILES/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/ptignore $HOME/.ptignore
ln -sf $DOTFILES/gitignore $HOME/.gitignore
ln -sf $DOTFILES/gitk $HOME/.gitk
ln -sf $DOTFILES/irbrc $HOME/.irbrc
ln -sf $DOTFILES/irssi $HOME/.irssi
ln -sf $DOTFILES/profile $HOME/.profile
ln -sf $DOTFILES/tigrc $HOME/.tigrc
ln -sf $DOTFILES/fish $HOME/.config/fish
ln -sf $DOTFILES/tmux.conf $HOME/.tmux.conf
ln -sf $DOTFILES/vimperatorrc $HOME/.vimperatorrc
ln -sf $DOTFILES/zshrc $HOME/.zshrc
ln -sf $DOTFILES/Xmodmap $HOME/.Xmodmap
ln -sf $DIR/zsh_history $HOME/.zsh_history
ln -sf $DIR/fasd $HOME/.fasd
ln -sf $DOTFILES/prezto/zpreztorc $HOME/.zpreztorc
ln -sf $DOTFILES/prezto/prompt_wikimatze_setup $HOME/.zprezto/modules/prompt/functions/prompt_wikimatze_setup

# }}}
# Bin files {{{

sudo ln -sf $DOTFILES/bin/battery /usr/local/bin/battery
sudo ln -sf $DOTFILES/bin/cjpgpdf.sh /usr/local/bin/cjpgpdf.sh
sudo ln -sf $DOTFILES/bin/cpngpdf.sh /usr/local/bin/cpngpdf.sh
sudo ln -sf $DOTFILES/bin/crushjpg.sh /usr/local/bin/crushjpg.sh
sudo ln -sf $DOTFILES/bin/crushpng.sh /usr/local/bin/crushpng.sh
sudo ln -sf $DOTFILES/bin/giffnaming.sh /usr/local/bin/giffnaming.sh
sudo ln -sf $DOTFILES/bin/jnaming.sh /usr/local/bin/jnaming.sh
sudo ln -sf $DOTFILES/bin/jsmall.sh /usr/local/bin/jsmall.sh
sudo ln -sf $DOTFILES/bin/pnaming.sh /usr/local/bin/pnaming.sh
sudo ln -sf $DOTFILES/bin/psmall.sh /usr/local/bin/psmall.sh
sudo ln -sf $DOTFILES/bin/waterproof.sh /usr/local/bin/waterproof.sh
sudo ln -sf $DOTFILES/etc/default/apport /etc/default/apport
sudo ln -sf $HOME/git/ttygif/concat.sh /usr/local/bin/ttyconcat

# }}}
