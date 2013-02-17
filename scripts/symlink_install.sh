# Removing links {{{
# Directory links {{{

rm -f $HOME/.anki
rm -f $HOME/.tmuxinator
rm -f $HOME/.vim
rm -f $HOME/bin
rm -f $HOME/bitbucket
rm -f $HOME/blog-wikimatze
rm -f $HOME/git-repositories
rm -f $HOME/.gftp
rm -f $HOME/latex
rm -f $HOME/presentations
rm -f -R $HOME/.config/Terminal
rm -f -R $HOME/.zsh-lib
rm -f -R $HOME/.zsh-completions

# }}}
# Bash files {{{

rm -f $HOME/.bash_profile
rm -f $HOME/.bashrc
rm -f $HOME/.convert
rm -f $HOME/.edit_aliases
rm -f $HOME/.functions
rm -f $HOME/.latex_convert_aliases
rm -f $HOME/.miscellaneous
rm -f $HOME/.program_aliases_linux
rm -f $HOME/.program_aliases_mac
rm -f $HOME/.unused_terms

# }}}
# Miscellaneous {{{

rm -f $HOME/.ackrc
rm -f $HOME/.config/awesome
rm -f $HOME/.gemrc
rm -f $HOME/.gitconfig
rm -f $HOME/.gitk
rm -f $HOME/.irbc
rm -f $HOME/.irssi
rm -f $HOME/.tigrc
rm -f $HOME/.tmux.conf
rm -f $HOME/.vimrc
rm -f $HOME/.zshrc

# }}}
# Bin files {{{

rm -f $HOME/bin/Markdown.pl
rm -f $HOME/bin/cjpgpdf.sh
rm -f $HOME/bin/cpngpdf.sh
rm -f $HOME/bin/crushjpg.sh
rm -f $HOME/bin/crushpng.sh
rm -f $HOME/bin/giffnaming.sh
rm -f $HOME/bin/jnaming.sh
rm -f $HOME/bin/jsmall.sh
rm -f $HOME/bin/pnaming.sh
rm -f $HOME/bin/psmall.sh
rm -f $HOME/bin/waterproof.sh

# }}}
# Bin scripts {{{

rm -f $HOME/bin/brew_install.sh
rm -f $HOME/bin/ctags_install.sh
rm -f $HOME/bin/gem_install.sh
rm -f $HOME/bin/mac_backup.sh
rm -f $HOME/bin/rbenv_install.sh
rm -f $HOME/bin/rbenv_install_setup.sh
rm -f $HOME/bin/tmux_install.sh
rm -f $HOME/bin/ubuntu_install.sh
rm -f $HOME/bin/xamp_install.sh

# }}}
# }}}
# Directories links {{{

ln -sf $HOME/Dropbox/bin $HOME/bin
ln -sf $HOME/Dropbox/bitbucket $HOME/bitbucket
ln -sf $HOME/Dropbox/bitbucket/presentations $HOME/presentations
ln -sf $HOME/Dropbox/blog-wikimatze $HOME/blog-wikimatze
ln -sf $HOME/Dropbox/dotfiles/config/Terminal $HOME/.config/Terminal
ln -sf $HOME/Dropbox/dotfiles/gftp $HOME/.gftp
ln -sf $HOME/Dropbox/dotfiles/tmuxinator $HOME/.tmuxinator
ln -sf $HOME/Dropbox/dotfiles/zsh-completions $HOME/.zsh-completions
ln -sf $HOME/Dropbox/dotfiles/zsh-lib $HOME/.zsh-lib
ln -sf $HOME/Dropbox/git-repositories $HOME/git-repositories
ln -sf $HOME/Dropbox/latex $HOME/latex
ln -sf $HOME/Dropbox/vim-settings $HOME/.vim

# }}}
# Bash files {{{

if [ "$OSTYPE" == "linux-gnu" ]
then
  ln -sf $HOME/Dropbox/dotfiles/bashrc $HOME/.bashrc
  ln -sf $HOME/Dropbox/dotfiles/functions_linux $HOME/.functions_linux
  sudo rm -f /etc/wpa_supplicant.conf
  sudo ln -sf $HOME/Dropbox/dotfiles/wpa_supplicant.conf /etc/wpa_supplicant.conf
  rm -f $HOME/.thunderbird
  ln -sf $HOME/Dropbox/Thunderbird $HOME/.thunderbird
elif [ "$OSTYPE" == "darwin10.0" ]
then
  ln -sf $HOME/Dropbox/dotfiles/bashrc $HOME/.bash_profile
  rm -f $HOME/Library/Thunderbird
  ln -sf $HOME/Dropbox/Thunderbird $HOME/Library/Thunderbird
fi

ln -sf $HOME/Dropbox/dotfiles/convert $HOME/.convert
ln -sf $HOME/Dropbox/dotfiles/edit_aliases $HOME/.edit_aliases
ln -sf $HOME/Dropbox/dotfiles/functions $HOME/.functions
ln -sf $HOME/Dropbox/dotfiles/latex_convert_aliases $HOME/.latex_convert_aliases
ln -sf $HOME/Dropbox/dotfiles/miscellaneous $HOME/.miscellaneous
ln -sf $HOME/Dropbox/dotfiles/program_aliases_linux $HOME/.program_aliases_linux
ln -sf $HOME/Dropbox/dotfiles/program_aliases_mac $HOME/.program_aliases_mac
ln -sf $HOME/Dropbox/dotfiles/unused_terms $HOME/.unused_terms
ln -sf $HOME/Dropbox/dotfiles/zshrc $HOME/.zshrc

# }}}
# Miscellaneous {{{

ln -sf $HOME/Dropbox/dotfiles/gitconfig $HOME/.gitconfig
ln -sf $HOME/Dropbox/tigrc $HOME/.tigrc
ln -sf $HOME/Dropbox/dotfiles/ackrc $HOME/.ackrc
ln -sf $HOME/Dropbox/dotfiles/gemrc $HOME/.gemrc
ln -sf $HOME/Dropbox/dotfiles/gitk $HOME/.gitk
ln -sf $HOME/Dropbox/dotfiles/irbrc $HOME/.irbrc
ln -sf $HOME/Dropbox/dotfiles/irssi $HOME/.irssi
ln -sf $HOME/Dropbox/dotfiles/tigrc $HOME/.tigrc
ln -sf $HOME/Dropbox/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/Dropbox/Anki $HOME/.anki
ln -sf $HOME/Dropbox/dotfiles/awesome $HOME/.config/awesome
ln -sf $HOME/.vim/.vimrc $HOME/.vimrc
# }}}
# Bin files {{{

ln -sf $HOME/Dropbox/dotfiles/bin/Markdown.pl $HOME/bin/Markdown.pl
ln -sf $HOME/Dropbox/dotfiles/bin/cjpgpdf.sh $HOME/bin/cjpgpdf.sh
ln -sf $HOME/Dropbox/dotfiles/bin/cpngpdf.sh $HOME/bin/cpngpdf.sh
ln -sf $HOME/Dropbox/dotfiles/bin/crushjpg.sh $HOME/bin/crushjpg.sh
ln -sf $HOME/Dropbox/dotfiles/bin/crushpng.sh $HOME/bin/crushpng.sh
ln -sf $HOME/Dropbox/dotfiles/bin/giffnaming.sh $HOME/bin/giffnaming.sh
ln -sf $HOME/Dropbox/dotfiles/bin/jnaming.sh $HOME/bin/jnaming.sh
ln -sf $HOME/Dropbox/dotfiles/bin/jsmall.sh $HOME/bin/jsmall.sh
ln -sf $HOME/Dropbox/dotfiles/bin/pnaming.sh $HOME/bin/pnaming.sh
ln -sf $HOME/Dropbox/dotfiles/bin/psmall.sh $HOME/bin/psmall.sh
ln -sf $HOME/Dropbox/dotfiles/bin/waterproof.sh $HOME/bin/waterproof.sh

# }}}
# Bash scripts {{{

ln -sf $HOME/Dropbox/dotfiles/scripts/brew_install.sh $HOME/bin/brew_install.sh
ln -sf $HOME/Dropbox/dotfiles/scripts/ctags_install.sh $HOME/bin/ctags_install.sh
ln -sf $HOME/Dropbox/dotfiles/scripts/gem_install.sh $HOME/bin/gem_install.sh
ln -sf $HOME/Dropbox/dotfiles/scripts/mac_backup.sh $HOME/bin/mac_backup.sh
ln -sf $HOME/Dropbox/dotfiles/scripts/rbenv_install.sh $HOME/bin/rbenv_install.sh
ln -sf $HOME/Dropbox/dotfiles/scripts/rbenv_install_setup.sh $HOME/bin/rbenv_install_setup.sh
ln -sf $HOME/Dropbox/dotfiles/scripts/tmux_install.sh $HOME/bin/tmux_install.sh
ln -sf $HOME/Dropbox/dotfiles/scripts/ubuntu_install.sh $HOME/bin/ubuntu_install.sh
ln -sf $HOME/Dropbox/dotfiles/scripts/xamp_install.sh $HOME/bin/xamp_install.sh

# }}}
