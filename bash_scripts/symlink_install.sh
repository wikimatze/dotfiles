# Removing links {{{
# Directory links {{{

rm $HOME/.zsnes
rm $HOME/bin
rm $HOME/zsnes-games
rm $HOME/.vim
rm $HOME/git-repositories
rm $HOME/latex
rm $HOME/blog-wikimatze

# }}}
# Bash files {{{

rm $HOME/.bash_profile
rm $HOME/.bashrc
rm $HOME/.bashrc_convert
rm $HOME/.bashrc_copy
rm $HOME/.bashrc_directory_aliases
rm $HOME/.bashrc_edit_aliases
rm $HOME/.bashrc_functions
rm $HOME/.bashrc_latex_convert_aliases
rm $HOME/.bashrc_latexmanuals_aliases
rm $HOME/.bashrc_miscellaneous
rm $HOME/.bashrc_program_aliases_linux
rm $HOME/.bashrc_program_aliases_mac
rm $HOME/.bashrc_unused_terms

# }}}
# Miscellaneous {{{

rm $HOME/.ackrc
rm $HOME/.gemrc
rm $HOME/.gitconfig
rm $HOME/.gitignore
rm $HOME/.gitk
rm $HOME/.irbc
rm $HOME/.rspec
rm $HOME/.tmux.conf
rm $HOME/.profile
rm $HOME/.vimrc

# }}}
# Bin files {{{

rm $HOME/bin/Markdown.pl
rm $HOME/bin/cjpgpdf.sh
rm $HOME/bin/cpngpdf.sh
rm $HOME/bin/crushjpg.sh
rm $HOME/bin/crushpng.sh
rm $HOME/bin/giffnaming.sh
rm $HOME/bin/jnaming.sh
rm $HOME/bin/jsmall.sh
rm $HOME/bin/pnaming.sh
rm $HOME/bin/psmall.sh
rm $HOME/bin/waterproof.sh

# }}}
# Bash scripts {{{

rm $HOME/bin/brew_install.sh
rm $HOME/bin/ctags_install.sh
rm $HOME/bin/gem_install.sh
rm $HOME/bin/mac_backup.sh
rm $HOME/bin/rbenv_install.sh
rm $HOME/bin/rbenv_install_setup.sh
rm $HOME/bin/tmux_install.sh
rm $HOME/bin/ubuntu_install.sh
rm $HOME/bin/xamp_install.sh

# }}}
# }}}
# Directories links {{{

ln -sf $HOME/Dropbox/.zsnes $HOME/.zsnes
ln -sf $HOME/Dropbox/bin $HOME/bin
ln -sf $HOME/Dropbox/blog-wikimatze $HOME/blog-wikimatze
ln -sf $HOME/Dropbox/git-repositories $HOME/git-repositories
ln -sf $HOME/Dropbox/latex $HOME/latex
ln -sf $HOME/Dropbox/vim-settings $HOME/.vim
ln -sf $HOME/Dropbox/zsnes-games $HOME/zsnes-games

# }}}
# Bash files {{{

ln -sf $HOME/Dropbox/.bash_history $HOME/.bash_history

if [ "$OSTYPE" == "linux-gnu" ]
then
  ln -sf $HOME/Dropbox/dotfiles/bashrc $HOME/.bashrc
elif [ "$OSTYPE" == "darwin10.0" ]
then
  ln -sf $HOME/Dropbox/dotfiles/bashrc $HOME/.bash_profile
fi

ln -sf $HOME/Dropbox/dotfiles/bashrc_convert $HOME/.bashrc_convert
ln -sf $HOME/Dropbox/dotfiles/bashrc_copy $HOME/.bashrc_copy
ln -sf $HOME/Dropbox/dotfiles/bashrc_directory_aliases $HOME/.bashrc_directory_aliases
ln -sf $HOME/Dropbox/dotfiles/bashrc_edit_aliases $HOME/.bashrc_edit_aliases
ln -sf $HOME/Dropbox/dotfiles/bashrc_functions $HOME/.bashrc_functions
ln -sf $HOME/Dropbox/dotfiles/bashrc_latex_convert_aliases $HOME/.bashrc_latex_convert_aliases
ln -sf $HOME/Dropbox/dotfiles/bashrc_latexmanuals_aliases $HOME/.bashrc_latexmanuals_aliases
ln -sf $HOME/Dropbox/dotfiles/bashrc_miscellaneous $HOME/.bashrc_miscellaneous
ln -sf $HOME/Dropbox/dotfiles/bashrc_program_aliases_linux $HOME/.bashrc_program_aliases_linux
ln -sf $HOME/Dropbox/dotfiles/bashrc_program_aliases_mac $HOME/.bashrc_program_aliases_mac
ln -sf $HOME/Dropbox/dotfiles/bashrc_unused_terms $HOME/.bashrc_unused_terms

# }}}
# Miscellaneous {{{

ln -sf $HOME/Dropbox/.gitconfig $HOME/.gitconfig
ln -sf $HOME/Dropbox/dotfiles/ackrc $HOME/.ackrc
ln -sf $HOME/Dropbox/dotfiles/gemrc $HOME/.gemrc
ln -sf $HOME/Dropbox/dotfiles/gitignore $HOME/.gitignore
ln -sf $HOME/Dropbox/dotfiles/gitk $HOME/.gitk
ln -sf $HOME/Dropbox/dotfiles/irbrc $HOME/.irbrc
ln -sf $HOME/Dropbox/dotfiles/profile $HOME/.profile
ln -sf $HOME/Dropbox/dotfiles/rspec $HOME/.rspec
ln -sf $HOME/Dropbox/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/Dropbox/vim-settings/.vimrc $HOME/.vimrc

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

ln -sf $HOME/Dropbox/dotfiles/bash_scripts/brew_install.sh $HOME/bin/brew_install.sh
ln -sf $HOME/Dropbox/dotfiles/bash_scripts/ctags_install.sh $HOME/bin/ctags_install.sh
ln -sf $HOME/Dropbox/dotfiles/bash_scripts/gem_install.sh $HOME/bin/gem_install.sh
ln -sf $HOME/Dropbox/dotfiles/bash_scripts/mac_backup.sh $HOME/bin/mac_backup.sh
ln -sf $HOME/Dropbox/dotfiles/bash_scripts/rbenv_install.sh $HOME/bin/rbenv_install.sh
ln -sf $HOME/Dropbox/dotfiles/bash_scripts/rbenv_install_setup.sh $HOME/bin/rbenv_install_setup.sh
ln -sf $HOME/Dropbox/dotfiles/bash_scripts/tmux_install.sh $HOME/bin/tmux_install.sh
ln -sf $HOME/Dropbox/dotfiles/bash_scripts/ubuntu_install.sh $HOME/bin/ubuntu_install.sh
ln -sf $HOME/Dropbox/dotfiles/bash_scripts/xamp_install.sh $HOME/bin/xamp_install.sh

# }}}

