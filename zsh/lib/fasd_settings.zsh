if which fasd> /dev/null
then
  eval "$(fasd --init auto)"

  # deactivate all the different interactive things
  unset zz

  alias d='fasd_cd -d' # quick changing directories
  alias v='f -e vim'   # quick opening files with vim
fi

