# Setup {{{
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
LANGUAGE=en_US.UTF-8

# sourcing zsh-lib file
for lib_file ($HOME/.zsh/lib/*.zsh); do
  source $lib_file
done

# folder for all autocomplete functions
fpath=($HOME/.zsh/completions $fpath)
# Need these two lines for autocompletion
autoload -U compinit
compinit

# make `cd` easier to search after project in the specified repos
cdpath=(~ ~/ownCloud ~/Downloads ~/Desktop ~/bitbucket ~/git-repositories)

# }}}
# Custom ZSH {{{

setopt extendedglob        # enables the negation operator ^ for displaying files
unsetopt beep extendedglob # turn of noisy beep sounds

export EDITOR='vim'

# Uncomment following line if you want to disable autosetting terminal title.
# solution for tmux problems
export DISABLE_AUTO_TITLE="true"

unsetopt correct_all

export TERM=screen-256color

# better lessc output
export LESS='-i-P%f (%i/%m) Line %lt/%L'

# print the whole history
alias history='history 0'

# }}}
# Sourcing {{{

source $HOME/.convert
source $HOME/.functions
source $HOME/.latex_convert_aliases
source $HOME/.miscellaneous

# }}}
# OS differeneces {{{

if [ "$OSTYPE" = "linux-gnu" ]; then
  source $HOME/.program_aliases_linux
  source $HOME/.functions_linux
elif [ "$OSTYPE" = "darwin10.0" ]; then
  export TEXEDIT='mvim'
  source $HOME.program_aliases_mac
fi

# }}}
# History settings {{{

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# }}}
# Paths settings {{{

export PATH="/usr/local/bin:/usr/local/lib:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# }}}
# LS setting {{{

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  eval "`dircolors -b`"
  alias ls='ls --color=auto'
fi

# }}}
# Prompt tuning  {{{

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
# chruby setting {{{

# Used by chruby thing
source /usr/local/share/chruby/chruby.sh
if which chruby > /dev/null; then
  chruby ruby-2.1.2

  # chruby autocompletion
  # based on https://github.com/postmodern/chruby/issues/27#issuecomment-36629835
  compctl -g '~/.rubies/*(:t)' chruby
fi

# }}}
# tmuxifier setting {{{
# https://github.com/jimeh/tmuxifier
if which tmuxifier> /dev/null; then
  eval "$(tmuxifier init -)"
  export TMUXIFIER_LAYOUT_PATH="$HOME/ownCloud/dotfiles/tmuxifier_layouts"
fi

# }}}
# sack setting {{{
# https://github.com/zph/go-sack

if which sack> /dev/null; then
  eval "$(sack init)"
fi

# }}}
# aliases {{{

alias la='ls -la'
alias ..='cd ..'

# }}}

