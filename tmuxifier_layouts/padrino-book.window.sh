DIR=$HOME/git
window_root "$DIR/PadrinoBook"

new_window "section"
run_cmd "vim chapters/user_profile.md"
split_v 20
run_cmd "bundle install --binstubs && bundle exec softcover build"
select_pane 1


window_root "$DIR/job-vacancy"
new_window "job-vacancy"
run_cmd "vim"

new_window "specs"
run_cmd "bundle && bundle exec rspec spec"

new_window "sqlite database"
run_cmd "sqlite3 db/job_vacancy_development.db"


window_root "$DIR/notes"
new_window "notes"
run_cmd "vim padrino.txt"


window_root "$DIR/notes"
new_window "todo"
run_cmd "vim padrino-todo.txt"


new_window "irc"
run_cmd "irssi"

