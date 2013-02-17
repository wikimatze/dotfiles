# Setup -----------------------------------------------------------------------------{{{
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

# sourcing zsh-lib file
for lib_file ($HOME/zsh-lib/*.zsh); do
  source $lib_file
done

# Sourcing the script for z completion (https://github.com/rupa/z)
. $HOME/zsh-lib/z.sh
export _Z_DATA="$HOME/Dropbox/z/.z"


fpath=($HOME/.zsh-completions $fpath)
# make `cd` easier to search after project
cdpath=(~ ~/bitbucket ~/git-repositories)

# ----------------------------------------------------------------------------------}}}
# Custom ZSH -----------------------------------------------------------------------{{{

# custom stuff
# Need these two lines for autocompletion
autoload -U compinit
compinit

setopt autocd       # instead of cd /etc you can just type /etc to change directories
# setopt auto_resume
setopt extendedglob # enables the negation operator ^ for displaying files
unsetopt beep extendedglob # turn of noisy beep sounds

export EDITOR='vim'

# enable 256 only for tmux
[ -z "$TMUX" ] && export TERM=xterm-256color

# Uncomment following line if you want to disable autosetting terminal title.
# solution for tmux problems
export DISABLE_AUTO_TITLE="true"

unsetopt correct_all

# ----------------------------------------------------------------------------------}}}
# Sourcing -------------------------------------------------------------------------{{{

source $HOME/.convert
source $HOME/.edit_aliases
source $HOME/.functions
source $HOME/.latex_convert_aliases
source $HOME/.miscellaneous

# ----------------------------------------------------------------------------------}}}
# Differentiation between OS -------------------------------------------------------{{{

if [ "$OSTYPE" = "linux-gnu" ]
then
  source $HOME/.program_aliases_linux
  source $HOME/.functions_linux
  g () {
    servername="`gvim --serverlist`"
    if [ "$servername" = "GVIM" ]
    then
      gvim --remote $*
    else
      gvim $*
    fi
  }
elif [ "$OSTYPE" = "darwin10.0" ]
then
  export TEXEDIT='mvim'
  source $HOME.program_aliases_mac
  g () {
    servername="`mvim --serverlist`"
    if [ "$servername" = "VIM" ]
    then
      mvim --remote $*
    else
      mvim $*
    fi
  }
fi

# ----------------------------------------------------------------------------------}}}
# History Settings -----------------------------------------------------------------{{{

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

# ----------------------------------------------------------------------------------}}}
# Paths settings -------------------------------------------------------------------{{{

export PATH="/usr/local/bin:/usr/local/lib:$PATH"
export PATH="/usr/local/bin:$PATH"

# set PATH so it includes user's private bin if it exists
if [[ -d "$HOME/bin" ]] ; then
  PATH="$HOME/bin:$PATH"
fi

# ----------------------------------------------------------------------------------}}}
# LS Settings ----------------------------------------------------------------------{{{

# enable color support of ls and also add handy aliases
if [[ -x /usr/bin/dircolors ]]; then
  eval "`dircolors -b`"
  alias ls='ls --color=auto'
fi

# ----------------------------------------------------------------------------------}}}
# rbenv Settings -------------------------------------------------------------------{{{

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# ----------------------------------------------------------------------------------}}}
# Prompt tuning  -------------------------------------------------------------------{{{
#
setopt promptsubst # enable changing of prompt

PROMPT='%n@%m: ${PWD/#$HOME/~} $(git_prompt_info) '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

# ----------------------------------------------------------------------------------}}}
# Suffix aliases -------------------------------------------------------------------{{{
# define file ending which should be open with appropriate programs
alias -s tex=vim
alias -s yaml=vim
alias -s txt=vim
# ----------------------------------------------------------------------------------}}}
# grepping running webrick services
alias vwebrick="lsof | grep IPv4"

# bundle aliases
alias be="bundle exec"
alias b="bundle"

# remapping <Caps-Lock> with left <Ctrl>
#/usr/bin/setxkbmap -option "ctrl:swapcaps"
