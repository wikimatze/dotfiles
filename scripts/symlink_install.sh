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
rm -f -R $HOME/.config/Ranger
rm -f -R $HOME/.config/roxterm.sourceforge.net
rm -f -R $HOME/.config/Terminal
rm -rf $HOME/.i3
rm -rf $HOME/.conky
rm -f $HOME/.weechat

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

rm -f $HOME/.Xmodmap
rm -f $HOME/.ackrc
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
rm -f $HOME/.zprezto/modules/prompt/functions/prompt_wikimatze_setup
rm -f $HOME/.zpreztorc
rm -f $HOME/.zsh_history
rm -f $HOME/.zshrc
rm -f $HOME/.latexmkrc
rm -f $HOME/.conkyrc
rm -f $HOME/.weechat_passphrase
sudo rm -f /etc/default/apport

# }}}
# Mucksrcs {{{

rm -f $HOME/bitbucket/die-lernhelfer-admin/.mucksrc
rm -f $HOME/bitbucket/die-lernhelfer-website/.mucksrc
rm -f $HOME/bitbucket/presentations/.mucksrc
rm -f $HOME/git/PadrinoBook/.mucksrc
rm -f $HOME/git/blog-wikimatze/.mucksrc
rm -f $HOME/git/job-vacancy/.mucksrc
rm -f $HOME/git/padrino-web/.mucksrc
rm -f $HOME/git/padrinobook-website/.mucksrc
rm -f $HOME/git/pumog/.mucksrc
rm -f $HOME/git/sweetie/.mucksrc
rm -f $HOME/git/vimberlin.de/.mucksrc
rm -f $HOME/git/vimfest/.mucksrc
rm -f $HOME/git/padrino-web/.mucksrc
rm -f $HOME/ownCloud/latex/projekte/javascript/.mucksrc
rm -f $HOME/ownCloud/latex/projekte/ruby/.mucksrc
rm -f $HOME/ownCloud/latex/projekte/scrum/.mucksrc
rm -f $HOME/ownCloud/latex/projekte/kanban/.mucksrc
rm -f $HOME/ownCloud/latex/projekte/angular/.mucksrc
rm -f $HOME/ownCloud/latex/vorlagen/cv/.mucksrc

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
sudo rm -f /usr/local/bin/ttd
sudo rm -f /usr/local/bin/ttdd
sudo rm -f /usr/local/bin/ttl

# }}}
# }}}
# Directories links {{{

ln -sf $DIR/documents/gnupg $HOME/.gnupg
ln -sf $DIR/documents/ssh $HOME/.ssh
ln -sf $DOTFILES/config/Terminal $HOME/.config/Terminal
ln -sf $DOTFILES/config/ranger $HOME/.config/ranger
ln -sf $DOTFILES/config/Roxterm $HOME/.config/roxterm.sourceforge.net

ln -sf $DOTFILES/fonts $HOME/.fonts
ln -sf $DOTFILES/zsh $HOME/.zsh
ln -sf $DOTFILES/i3 $HOME/.i3
ln -sf $DOTFILES/conky $HOME/.conky
ln -sf $DIR/latex $HOME/latex
ln -sf $DOTFILES/weechat $HOME/.weechat

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
ln -sf $DOTFILES/tmux.conf $HOME/.tmux.conf
ln -sf $DOTFILES/vimperatorrc $HOME/.vimperatorrc
ln -sf $DOTFILES/zshrc $HOME/.zshrc
ln -sf $DOTFILES/Xmodmap $HOME/.Xmodmap
ln -sf $DIR/zsh_history $HOME/.zsh_history
ln -sf $DIR/fasd $HOME/.fasd
ln -sf $DOTFILES/prezto/zpreztorc $HOME/.zpreztorc
ln -sf $DOTFILES/prezto/prompt_wikimatze_setup $HOME/.zprezto/modules/prompt/functions/prompt_wikimatze_setup
ln -sf $DOTFILES/latexmkrc $HOME/.latexmkrc
ln -sf $DIR/documents/weechat_passphrase $HOME/.weechat_passphrase
ln -sf $HOME/.conky/conkyrc $HOME/.conkyrc

# }}}
# Mucksrcs {{{

ln -sf $HOME/git/dotfiles/mucksrcs/blog_wikimatze_mucksrc $HOME/git/blog-wikimatze/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/angular_mucksrc $HOME/ownCloud/latex/projekte/angular/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/cv_mucksrc $HOME/ownCloud/latex/vorlagen/cv/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/die_lernhelfer_admin_mucksrc $HOME/bitbucket/die-lernhelfer-admin/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/die_lernhelfer_website_mucksrc $HOME/bitbucket/die-lernhelfer-website/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/javascript_mucksrc $HOME/ownCloud/latex/projekte/javascript/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/job_vacancy_mucksrc $HOME/git/job-vacancy/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/padrino_web_mucksrc $HOME/git/padrino-web/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/vimfest_mucksrc $HOME/git/vimfest/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/padrinobook_mucksrc $HOME/git/PadrinoBook/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/padrinobook_website_mucksrc $HOME/git/padrinobook-website/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/presentations_mucksrc $HOME/bitbucket/presentations/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/pumog_mucksrc $HOME/git/pumog/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/scrum_mucksrc $HOME/ownCloud/latex/projekte/scrum/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/kanban_mucksrc $HOME/ownCloud/latex/projekte/kanban/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/angular_mucksrc $HOME/ownCloud/latex/projekte/angular/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/sweetie_mucksrc $HOME/git/sweetie/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/ruby_mucksrc $HOME/ownCloud/latex/projekte/ruby/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/vimberlin_mucksrc $HOME/git/vimberlin.de/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/vimfest_mucksrc $HOME/git/vimfest/.mucksrc

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
sudo ln -sf $DOTFILES/bin/ttd.sh /usr/local/bin/ttd
sudo ln -sf $DOTFILES/bin/ttdd.sh /usr/local/bin/ttdd
sudo ln -sf $DOTFILES/bin/ttl.sh /usr/local/bin/ttl
sudo ln -sf $DOTFILES/etc/default/apport /etc/default/apport
sudo ln -sf $HOME/git/ttygif/concat.sh /usr/local/bin/ttyconcat

# }}}
