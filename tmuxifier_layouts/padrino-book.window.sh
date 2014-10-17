DIR=$HOME/ownCloud
window_root "$DIR/padrino/manuscript"

new_window "section"
run_cmd "vim chapters/user_profile.md"
split_v 20
run_cmd "softcover build"
select_pane 1

window_root "$DIR/notes"
new_window "notes"
run_cmd "vim padrino.txt"

window_root "$DIR/notes"
new_window "todo"
run_cmd "vim padrino-todo.txt"

new_window "irc"
run_cmd "irssi"

