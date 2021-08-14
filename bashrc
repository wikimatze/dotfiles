which zsh > /dev/null 2>&1
if [ $? = 0 ]; then
  exec zsh
fi


