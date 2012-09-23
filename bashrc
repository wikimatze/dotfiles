# Encoding -----------------------------------------------------------------------{{{

LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

# --------------------------------------------------------------------------------}}}
# Sourcing -----------------------------------------------------------------------{{{

source $HOME/.bashrc_convert
source $HOME/.bashrc_directory_aliases
source $HOME/.bashrc_edit_aliases
source $HOME/.bashrc_functions
source $HOME/.bashrc_latex_convert_aliases
source $HOME/.bashrc_miscellaneous

# --------------------------------------------------------------------------------}}}
# Differentiation between OS -----------------------------------------------------{{{

if [ "$OSTYPE" == "linux-gnu" ]
then
  source .bashrc_program_aliases_linux
  source .bashrc_functions_linux
  g () {
    servername="`gvim --serverlist`"
    if [ "$servername" == "GVIM" ]
    then
      gvim --remote $*
    else
      gvim $*
    fi
  }
elif [ "$OSTYPE" == "darwin10.0" ]
then
  export TEXEDIT='mvim'
  export PATH=$PATH:/usr/local/texlive/2010/bin/universal-darwin
  source .bashrc_program_aliases_mac
  g () {
    servername="`mvim --serverlist`"
    if [ "$servername" == "VIM" ]
    then
      mvim --remote $*
    else
      mvim $*
    fi
  }
fi

# --------------------------------------------------------------------------------}}}
# Autocompletion -----------------------------------------------------------------{{{

# autocompletion for rake tasks
export COMP_WORDBREAKS=${COMP_WORDBREAKS/\:/}

_rakecomplete () {
  COMPREPLY=($(compgen -W "`rake -s -T 2>/dev/null | awk '{{print $2}}'`" -- ${COMP_WORDS[COMP_CWORD]}))
  return 0
}

_capcomplete () {
  COMPREPLY=($(compgen -W "`cap  -T  2>/dev/null| awk '{{ if ( $3 ~ /\#/ ) print $2}}'`" -- ${COMP_WORDS[COMP_CWORD]}))
  return 0
}

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}


complete -o default -o nospace -F _rakecomplete rake
complete -o default -o nospace -F _capcomplete cap
complete -F _complete_ssh_hosts ssh

# --------------------------------------------------------------------------------}}}
# History Settings ---------------------------------------------------------------{{{

# don't put duplicate lines in the history
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# --------------------------------------------------------------------------------}}}
# Paths settings -----------------------------------------------------------------{{{

export PATH="/usr/local/bin:/usr/local/lib:$PATH"
export PATH="/usr/local/bin:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# --------------------------------------------------------------------------------}}}
# Prompt Stuff -------------------------------------------------------------------{{{

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# --------------------------------------------------------------------------------}}}
# LS Settings --------------------------------------------------------------------{{{

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

# --------------------------------------------------------------------------------}}}
# Rbenv Settings -----------------------------------------------------------------{{{
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

# --------------------------------------------------------------------------------}}}
# bundler ------------------------------------------------------------------------{{{

alias be="bundle exec"
alias bo="bundle open"

# --------------------------------------------------------------------------------}}}
# vagrant ------------------------------------------------------------------------{{{

alias vup="vagrant up"
alias vdestroy="vagrant destroy -f"

# --------------------------------------------------------------------------------}}}
# Deletable Stuff ----------------------------------------------------------------{{{

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# --------------------------------------------------------------------------------}}}

export EDITOR='vim'
export PERL_LOCAL_LIB_ROOT="/home/helex/perl5";
export PERL_MB_OPT="--install_base /home/helex/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/helex/perl5";
export PERL5LIB="/home/helex/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int:/home/helex/perl5/lib/perl5";
export PATH="/home/helex/perl5/bin:$PATH";

# enable 256 only for tmux
[ -z "$TMUX" ] && export TERM=xterm-256color

# color bash settings for different environments
# http://blog.sanctum.geek.nz/terminal-colour-tolerance/?utm_source=rss&utm_medium=rss&utm_campaign=terminal-colour-tolerance

# Uncolored bits of my prompt, we'll color them if appropriate shortly.
PS1='[\u@mg:\w]'

# Save some color codes based on our colour space.

COLORS=$(tput colors)

# Terminal supports 256 colours
if [[ $COLORS -ge 256 ]]; then
    COLOR_ROOT='\[\e[38;5;9m\]'
    COLOR_USER='\[\e[38;5;10m\]'
    COLOR_UNDO='\[\e[0m\]'

# Terminal supports only eight colours
elif [[ $COLORS -ge 8 ]]; then
    COLOR_ROOT='\[\e[1;31m\]'
    COLOR_USER='\[\e[1;32m\]'
    COLOR_UNDO='\[\e[0m\]'

# Terminal may not support colour at all
else
    COLOR_ROOT=
    COLOR_USER=
    COLOR_UNDO=
fi

# Change prompt color depending on whether I'm root or not.
if [[ $EUID -eq 0 ]]; then
  PS1=${COLOR_ROOT}${PS1}${COLOR_UNDO}
else
  PS1=${COLOR_USER}${PS1}${COLOR_UNDO}
fi

# Add space separator to end of prompt.
PS1="${PS1} "

