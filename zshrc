fpath=($HOME/.zsh/completions $fpath)
autoload -U compinit

# zimfw {{{
# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# }}}

# Setup {{{
export EDITOR='vim'
export TERM=screen-256color
# vim as manpage viewer
export MANPAGER="vim -M +MANPAGER -"
# need for urlview (a tmux plugin for opening URLs in a browser)
export BROWSER='/usr/bin/firefox'
export CMUS_HOME="$HOME/.config/cmus"

# get rid of ruby deprecation warnings (https://stackoverflow.com/questions/59491848/how-to-fix-railss-warning-messages-with-ruby-2-7-0)
export RUBYOPT='-W0'


 #Uncomment following line if you want to disable autosetting terminal title.
# solution for tmux problems
export DISABLE_AUTO_TITLE="true"

# diable auto correct
unsetopt correct_all

# sourcing zsh-lib file
for lib_file ($HOME/.zsh/lib/*.zsh); do
  source $lib_file
done

# Paths settings
export PATH="$PATH:/usr/local/bin:/usr/local/lib:PATH:$HOME/.tmuxifier/bin"

# Sourcing bash files
source $HOME/.convert
source $HOME/.functions
source $HOME/.latex_convert_aliases
source $HOME/.miscellaneous

# }}}
# OS differences {{{

if [ "$OSTYPE" = "linux-gnu" ]; then
  source $HOME/.program_aliases_linux
  source $HOME/.functions_linux
elif [ "$OSTYPE" = "darwin10.0" ]; then
  export TEXEDIT='mvim'
  source $HOME.program_aliases_mac
fi

# }}}
# History {{{

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt append_history
setopt extended_history       # write the history file in the ':start:elapsed;command' format
setopt inc_append_history     # write to the history file immediately, not when the shell exits
setopt hist_expire_dups_first # expire a duplicate event first when trimming history
setopt hist_ignore_dups       # do not record an event that was just recorded again
setopt hist_ignore_all_dups   # delete an old recorded event if a new event is a duplicate
setopt hist_save_no_dups      # do not write a duplicate event to the history file
setopt hist_verify            # do not execute immediately upon history expansion
setopt share_history          # share history between all sessions
setopt HIST_IGNORE_SPACE      # space in front of command will not append to history file


# }}}
# Prompt {{{

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr 'M'
zstyle ':vcs_info:*' unstagedstr 'M'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
  '%F{5}[%F{2}%b%F{5}] %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    git status --porcelain | grep '??' &> /dev/null ; then
    hook_com[unstaged]+='%F{1}??%f'
  fi
}

precmd () { vcs_info }
PROMPT='%B%m%~%b ${vcs_info_msg_0_} %f%# '

# }}}
# Commandline completion {{{
# Press <C-X><C-X> to start autocompletion for commands typed into the history
autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey '^X^X' history-beginning-search-menu

# }}}
# rvm setting {{{
source /home/wm/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin"

# }}}
# mucks {{{
export PATH="$PATH:$HOME/git/mucks"

alias mucksangular="mucks ~/nextcloud/latex/projekte/angular/.mucksrc"
alias muckscv="mucks ~/nextcloud/latex/vorlagen/cv/.mucksrc"
alias mucksdielernhelferadmin="mucks ~/bitbucket/die-lernhelfer-admin/.mucksrc"
alias mucksdielernhelferwebsite="mucks ~/bitbucket/die-lernhelfer-website/.mucksrc"
alias mucksfinanzen="mucks ~/git/finanzen/.mucksrc"
alias mucksjavascript="mucks ~/nextcloud/latex/projekte/javascript/.mucksrc"
alias mucksjobvacancy="mucks ~/git/job-vacancy/.mucksrc"
alias muckskanban="mucks ~/nextcloud/latex/projekte/kanban/.mucksrc"
alias muckspadrinobook="mucks ~/git/PadrinoBook/.mucksrc"
alias muckspadrinocasts="mucks ~/bitbucket/padrinocasts/.mucksrc"
alias muckspadrinobookwebsite="mucks ~/git/padrinobook.com/.mucksrc"
alias muckspadrinoweb="mucks ~/git/padrino-web/.mucksrc"
alias muckspresentation="mucks ~/bitbucket/presentations/.mucksrc"
alias muckspumog="mucks ~/git/pumog/.mucksrc"
alias mucksruby="mucks ~/nextcloud/latex/projekte/ruby/.mucksrc"
alias mucksscrum="mucks ~/nextcloud/latex/projekte/scrum/.mucksrc"
alias muckssweetie="mucks ~/git/sweetie/.mucksrc"
alias mucksvimberlin="mucks ~/git/vimberlin.de/.mucksrc"
alias mucksvimfest="mucks ~/git/vimfest/.mucksrc"
alias muckswikimatze="mucks ~/git/wikimatze.de/.mucksrc"
alias mucksdividendendkb="mucks ~/Downloads/pdf-reader/examples/.mucksrcdividendendkb"
alias mucksdividendenonvista="mucks ~/Downloads/pdf-reader/examples/.mucksrcdividendenonvista"
alias mucksdividendencom="mucks ~/Downloads/pdf-reader/examples/.mucksrcdividendencom"
alias mucksdividendentrade="mucks ~/Downloads/pdf-reader/examples/.mucksrcdividendentrade"

# }}}
# aliases {{{

alias la='ls -rtlh --color'
alias ..='cd ..'
alias ls='ls --color=auto'
alias svim='vim --servername vim'
alias qutebrowser='qutebrowser --backend webengine'
alias ehaushaltsbuch='libreoffice /home/wm/nextcloud/finanzen/haushaltsbuch.ods'

# finanzen aliases
alias edividenden='libreoffice /home/wm/nextcloud/finanzen/dividenden.ods'
alias efinanzcockpit='libreoffice /home/wm/nextcloud/finanzen/finanzcockpit.ods'
alias ehannafinanzcockpit='libreoffice /home/wm/nextcloud/finanzen/hanna/finanzcockpit.ods'
alias ehannadividenden='libreoffice /home/wm/nextcloud/finanzen/hanna/dividenden.ods'
alias efelixfinanzcockpit='libreoffice /home/wm/nextcloud/finanzen/felix_comdirect/finanzcockpit.ods'

# hack with || true which always exits with a status code indicates success
alias clear_docker='docker rm $(docker ps -a -q) || true && docker rmi $(docker images -q) --force || true && docker volume ls -qf dangling=true | xargs -r docker volume rm'


# zsh-stats: shows the most typed in commands
# based on https://github.com/robbyrussell/oh-my-zsh/blob/217d8f0540a41b2927caf986561e45634fa1952a/lib/functions.zsh#L2
function zsh-stats() {
  fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n25
}

# }}}
# vim mapping {{{

# <C-z> will toggle foreground and background
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# }}}
# fzf mappings {{{
# Is installed via vim
# Details under https://github.com/junegunn/fzf/wiki/Examples
# fkill - kill process
fkill() {
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -${1:-9} $pid
  fi
}

# checkout git commit
fcoc() {
  local commits commit
  commits=$(git log --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}


# RVM integration
frb() {
  local rb
  rb=$((echo system; rvm list | grep ruby | cut -c 4-) |
  awk '{print $1}' |
  fzf-tmux -l 30 +m --reverse) && rvm use $rb
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# }}}
# Pimp terminal color {{{
# By default, executable directories show up as white on a light green background
# Details under http://www.bigsoft.co.uk/blog/index.php/2008/04/11/configuring-ls_colors
LS_COLORS="ow=01;90:di=01;90"
export LS_COLORS

# }}}

# need this for german keyboard
setxkbmap de

eval `gnome-keyring-daemon --start`

# export gpg key because prezto is not anymore
export GPG_TTY=$(tty)
PATH=/home/wm/rclone:$PATH
PATH=/home/wm/rclone:$PATH
