# Universal variables
set -U EDITOR vim
set -U TERM screen-256color

# Uncomment following line if you want to disable autosetting terminal title.
# solution for tmux problems
set -U DISABLE_AUTO_TITLE "true"

# export PATHS eg. PATH="$PATH:/usr/local/bin:/usr/local/lib:PATH:$HOME/.tmuxifier/bin:$HOME/bin:$PATH"
set -g PATH $PATH /usr/local/bin /usr/local/lib $HOME/.tmuxifier/bin

# tmuxifier setting {{{
# https://github.com/jimeh/tmuxifier

# Set/fix Tmuxifier root path if needed.
if test -z $TMUXIFIER
  set -gx TMUXIFIER "$HOME/.tmuxifier"
end

# Add `bin` directroy to `$PATH`.
if not contains "$TMUXIFIER/bin" $PATH
  set -gx PATH "$TMUXIFIER/bin" $PATH
end

# If `tmuxifier` is available, and `$TMUXIFIER_NO_COMPLETE` is not set, then
# load Tmuxifier shell completion.
if test -n (which tmuxifier); and test -z $TMUXIFIER_NO_COMPLETE
  . "$TMUXIFIER/completion/tmuxifier.fish"
end

set -x TMUXIFIER_LAYOUT_PATH "$HOME/ownCloud/dotfiles/tmuxifier_layouts"
# fi
# }}}

