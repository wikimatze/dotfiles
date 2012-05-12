# Removing links {{{
# Directory links {{{

rm -f $HOME/.zsnes
rm -f $HOME/bin
rm -f $HOME/zsnes-games
rm -f $HOME/.vim
rm -f $HOME/git-repositories
rm -f $HOME/latex
rm -f $HOME/blog-wikimatze

# }}}
# Bash files {{{

rm -f $HOME/.bash_profile
rm -f $HOME/.bashrc
rm -f $HOME/.bashrc_convert
rm -f $HOME/.bashrc_copy
rm -f $HOME/.bashrc_directory_aliases
rm -f $HOME/.bashrc_edit_aliases
rm -f $HOME/.bashrc_functions
rm -f $HOME/.bashrc_latex_convert_aliases
rm -f $HOME/.bashrc_latexmanuals_aliases
rm -f $HOME/.bashrc_miscellaneous
rm -f $HOME/.bashrc_program_aliases_linux
rm -f $HOME/.bashrc_program_aliases_mac
rm -f $HOME/.bashrc_unused_terms

# }}}
# Miscellaneous {{{

rm -f $HOME/.ackrc
rm -f $HOME/.gemrc
rm -f $HOME/.gitconfig
rm -f $HOME/.gitignore
rm -f $HOME/.gitk
rm -f $HOME/.irbc
rm -f $HOME/.rspec
rm -f $HOME/.tmux.conf
rm -f $HOME/.profile
rm -f $HOME/.vimrc

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
# Bash scripts {{{

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

ln -sf $HOME/Dropbox/.zsnes $HOME/.zsnes
ln -sf $HOME/Dropbox/bin $HOME/bin
ln -sf $HOME/Dropbox/blog-wikimatze $HOME/blog-wikimatze
ln -sf $HOME/Dropbox/git-repositories $HOME/git-repositories
ln -sf $HOME/Dropbox/latex $HOME/latex
ln -sf $HOME/Dropbox/vim-settings $HOME/.vim
ln -sf $HOME/Dropbox/zsnes-games $HOME/zsnes-games

# }}}
# Bash files {{{

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

