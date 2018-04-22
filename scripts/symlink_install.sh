#!/bin/bash
# Removing links {{{
# Directory links {{{
DIR=$HOME/nextcloud
DOTFILES=$HOME/git/dotfiles

unlink $HOME/latex
unlink $HOME/.fonts
unlink $HOME/.zsh
unlink $HOME/.config/ranger
unlink $HOME/.config/rofi-pass
unlink $HOME/.config/roxterm.sourceforge.net
unlink $HOME/.config/Terminal
unlink $HOME/.i3
unlink $HOME/.conky
unlink $HOME/.weechat

# }}}
# Bash files {{{

unlink $HOME/.bashrc
unlink $HOME/.convert
unlink $HOME/.functions
unlink $HOME/.latex_convert_aliases
unlink $HOME/.miscellaneous
unlink $HOME/.program_aliases_linux
unlink $HOME/.program_aliases_mac

# }}}
# Miscellaneous {{{

unlink $HOME/.Xmodmap
unlink $HOME/.ackrc
unlink $HOME/.fasd
unlink $HOME/.gemrc
unlink $HOME/.gitconfig
unlink $HOME/.gitignore
unlink $HOME/.gitk
unlink $HOME/.irbrc
unlink $HOME/.irssi
unlink $HOME/.profile
unlink $HOME/.ptignore
unlink $HOME/.tmux.conf
unlink $HOME/.zprezto/modules/prompt/functions/prompt_wikimatze_setup
unlink $HOME/.zpreztorc
unlink $HOME/.zsh_history
unlink $HOME/.zshrc
unlink $HOME/.latexmkrc
unlink $HOME/.conkyrc
unlink $HOME/.weechat_passphrase
unlink $HOME/.config/gromit-mpx.cfg
unlink $HOME/.config/cmus/rc
unlink $HOME/.config/cmus/album.sh
unlink $HOME/.config/qutebrowser/autoconfig.yml
sudo unlink /etc/default/apport

# }}}
# Mucksrcs {{{

unlink $HOME/bitbucket/die-lernhelfer-admin/.mucksrc
unlink $HOME/bitbucket/die-lernhelfer-website/.mucksrc
unlink $HOME/bitbucket/padrinocasts/.mucksrc
unlink $HOME/bitbucket/presentations/.mucksrc
unlink $HOME/git/PadrinoBook/.mucksrc
unlink $HOME/git/job-vacancy/.mucksrc
unlink $HOME/git/padrino-web/.mucksrc
unlink $HOME/git/padrinobook.com/.mucksrc
unlink $HOME/git/pumog/.mucksrc
unlink $HOME/git/sweetie/.mucksrc
unlink $HOME/git/vimberlin.de/.mucksrc
unlink $HOME/git/vimfest/.mucksrc
unlink $HOME/git/wikimatze.de/.mucksrc
unlink $HOME/nextcloud/latex/projekte/angular/.mucksrc
unlink $HOME/nextcloud/latex/projekte/javascript/.mucksrc
unlink $HOME/nextcloud/latex/projekte/kanban/.mucksrc
unlink $HOME/nextcloud/latex/projekte/ruby/.mucksrc
unlink $HOME/nextcloud/latex/projekte/scrum/.mucksrc
unlink $HOME/nextcloud/latex/vorlagen/cv/.mucksrc

# }}}
# Bin files {{{

sudo unlink /usr/local/bin/battery
sudo unlink /usr/local/bin/cjpgpdf.sh
sudo unlink /usr/local/bin/cpngpdf.sh
sudo unlink /usr/local/bin/crushjpg.sh
sudo unlink /usr/local/bin/crushpng.sh
sudo unlink /usr/local/bin/giffnaming.sh
sudo unlink /usr/local/bin/jnaming.sh
sudo unlink /usr/local/bin/jsmall.sh
sudo unlink /usr/local/bin/pnaming.sh
sudo unlink /usr/local/bin/psmall.sh
sudo unlink /usr/local/bin/waterproof.sh
sudo unlink /usr/local/bin/ttyconcat
sudo unlink /usr/local/bin/ttd
sudo unlink /usr/local/bin/ttl
sudo unlink /usr/local/bin/tts
sudo unlink /usr/local/bin/ttscreencast
sudo unlink /usr/local/bin/zoom_xfce.sh

# }}}
# }}}
# Directories links {{{

ln -sf $DOTFILES/config/ranger $HOME/.config/ranger
ln -sf $DOTFILES/config/rofi-pass $HOME/.config/rofi-pass
ln -sf $DOTFILES/config/Roxterm $HOME/.config/roxterm.sourceforge.net
ln -sf $DOTFILES/config/Terminal $HOME/.config/Terminal

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
ln -sf $DOTFILES/tmux.conf $HOME/.tmux.conf
ln -sf $DOTFILES/zshrc $HOME/.zshrc
ln -sf $DOTFILES/Xmodmap $HOME/.Xmodmap
ln -sf $DOTFILES/config/cmus/rc $HOME/.config/cmus/rc
ln -sf $DOTFILES/config/cmus/album.sh $HOME/.config/cmus/album.sh
ln -sf $DOTFILES/config/qutebrowser/autoconfig.yml $HOME/.config/qutebrowser/autoconfig.yml
ln -sf $DIR/zsh_history $HOME/.zsh_history
ln -sf $DIR/fasd $HOME/.fasd
ln -sf $DOTFILES/prezto/zpreztorc $HOME/.zpreztorc
ln -sf $DOTFILES/prezto/prompt_wikimatze_setup $HOME/.zprezto/modules/prompt/functions/prompt_wikimatze_setup
ln -sf $DOTFILES/latexmkrc $HOME/.latexmkrc
ln -sf $DIR/documents/weechat_passphrase $HOME/.weechat_passphrase
ln -sf $HOME/.conky/conkyrc $HOME/.conkyrc
ln -sf $DOTFILES/config/gromit/gromit-mpx.cfg $HOME/.config/gromit-mpx.cfg

# }}}
# Mucksrcs {{{

ln -sf $HOME/git/dotfiles/mucksrcs/angular_mucksrc $HOME/nextcloud/latex/projekte/angular/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/angular_mucksrc $HOME/nextcloud/latex/projekte/angular/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/wikimatze_mucksrc $HOME/git/wikimatze.de/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/cv_mucksrc $HOME/nextcloud/latex/vorlagen/cv/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/die_lernhelfer_admin_mucksrc $HOME/bitbucket/die-lernhelfer-admin/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/die_lernhelfer_website_mucksrc $HOME/bitbucket/die-lernhelfer-website/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/javascript_mucksrc $HOME/nextcloud/latex/projekte/javascript/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/job_vacancy_mucksrc $HOME/git/job-vacancy/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/kanban_mucksrc $HOME/nextcloud/latex/projekte/kanban/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/padrino_web_mucksrc $HOME/git/padrino-web/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/padrinobook_mucksrc $HOME/git/PadrinoBook/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/padrinocasts_mucksrc $HOME/bitbucket/padrinocasts/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/padrinobook_com_mucksrc $HOME/git/padrinobook.com/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/presentations_mucksrc $HOME/bitbucket/presentations/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/pumog_mucksrc $HOME/git/pumog/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/ruby_mucksrc $HOME/nextcloud/latex/projekte/ruby/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/scrum_mucksrc $HOME/nextcloud/latex/projekte/scrum/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/sweetie_mucksrc $HOME/git/sweetie/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/vimberlin_mucksrc $HOME/git/vimberlin.de/.mucksrc
ln -sf $HOME/git/dotfiles/mucksrcs/vimfest_mucksrc $HOME/git/vimfest/.mucksrc
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
sudo ln -sf $DOTFILES/bin/ttl.sh /usr/local/bin/ttl
sudo ln -sf $DOTFILES/bin/tts.sh /usr/local/bin/tts
sudo ln -sf $DOTFILES/bin/ttscreencast.sh /usr/local/bin/ttscreencast
sudo ln -sf $DOTFILES/bin/zoom_xfce.sh /usr/local/bin/zoom_xfce.sh
sudo ln -sf $DOTFILES/etc/default/apport /etc/default/apport
sudo ln -sf $HOME/git/ttygif/concat.sh /usr/local/bin/ttyconcat

# }}}
