which zsh > /dev/null 2>&1
if [ $? = 1 ]; then
  echo "zsh is not installed"
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash
else
  exec zsh
fi


