# FASD settings --------------------------------------------------------------------{{{
# DEFAULT BEHAVIORS
#   v def conf      => vim /some/awkward/path/to/type/default.conf
#   j abc           => cd /hell/of/a/awkward/path/to/get/to/abcdef
#   m movie         => mplayer /whatever/whatever/whatever/awesome_movie.mp4
#   o eng paper     => xdg-open /you/dont/remember/where/english_paper.pdf
#   vim `f rc lo`   => vim /etc/rc.local
#   vim `f rc conf` => vim /etc/rc.conf

# Fasd comes with some useful aliases by default:

# ```sh
# alias a='fasd -a'        # any
# alias s='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
# alias f='fasd -f'        # file
# alias sd='fasd -sid'     # interactive directory selection
# alias sf='fasd -sif'     # interactive file selection
# alias z='fasd_cd -d'     # cd, same functionality as j in autojump
# alias zz='fasd_cd -d -i' # cd with interactive selection
# ```#

eval "$(fasd --init auto)"

# Setting filename to 00-fasd.zsh to help order
# the sourcing so that fasd doesn't overwrite
# my personal aliases

# deactivate all the different interactive things
unset zz

alias d='fasd_cd -d'    # quick changing directories
alias v='f -e vim'      # quick opening files with vim
alias m='f -e mplayer'  # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open

# ----------------------------------------------------------------------------------}}}
