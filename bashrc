which zsh > /dev/null 2>&1
if [ $? = 1 ]; then
  [ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash
else
  exec zsh
fi


