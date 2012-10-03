# Setup for oh-my-zsh ---------------------------------------------------------------{{{
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

source $ZSH/oh-my-zsh.sh
plugin=(bundler cap gem git rails rbenv ssh-agent svn thor vagrant vundle)

# ----------------------------------------------------------------------------------}}}
# Custom ZSH -----------------------------------------------------------------------{{{
fpath=($HOME/.tmuxinator/completion ${fpath}) # tmuxinator autocompletion

# custom stuff
# Set the auto completion on
autoload -U compinit
compinit

setopt autocd       # instead of cd /etc you can just type /etc to change directories
# setopt auto_resume
setopt extendedglob # enables the negation operator ^ for displaying files
unsetopt beep extendedglob # turn of noisy beep sounds


# ----------------------------------------------------------------------------------}}}
# Sourcing -------------------------------------------------------------------------{{{

source $HOME/.convert
source $HOME/.directory_aliases
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

# don't put duplicate lines in the history
export HISTSIZE=100000
export HISTFILESIZE=100000

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

export EDITOR='vim'

# enable 256 only for tmux
[ -z "$TMUX" ] && export TERM=xterm-256color

# Uncomment following line if you want to disable autosetting terminal title.
# solution for tmux problems
export DISABLE_AUTO_TITLE="true"

alias ewlan="sudo wpa_supplicant -Dwext -iwlan0 -c/etc/wpa_supplicant.conf"
