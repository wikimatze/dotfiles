# Encoding -----------------------------------------------------------------------{{{

LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

# --------------------------------------------------------------------------------}}}
# Sourcing -----------------------------------------------------------------------{{{

source $HOME/.bashrc_convert
source $HOME/.bashrc_copy
source $HOME/.bashrc_directory_aliases
source $HOME/.bashrc_edit_aliases
source $HOME/.bashrc_functions
source $HOME/.bashrc_latex_convert_aliases
source $HOME/.bashrc_latexmanuals_aliases
source $HOME/.bashrc_miscellaneous

# --------------------------------------------------------------------------------}}}
# Differentiation between OS -----------------------------------------------------{{{

if [ "$OSTYPE" == "linux-gnu" ]
then
  source .bashrc_program_aliases_linux
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
  source $HOME/Dropbox/dotfiles/bash_scripts/git-completion.bash
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

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac


if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
  color_prompt=yes
    else
  color_prompt=
    fi
fi


if [ "$color_prompt" = yes ]; then
    export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    export PS1="\u@mg:\w$ "
fi
unset color_prompt force_color_prompt


export PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u@\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

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
# Deletable Stuff ----------------------------------------------------------------{{{

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


# --------------------------------------------------------------------------------}}}

export EDITOR='vim'

