window_root "$HOME/git/padrinobook-website"
new_window "main"

run_cmd "vim"

split_v 20
run_cmd "bundle && bundle exec rake s"

select_pane 1

new_window "index"
run_cmd "vim index.md"

new_window "book-index"
run_cmd "vim book_index.md"

new_window "layout-default"
run_cmd "vim _layouts/default.html"

new_window "css-style"
run_cmd "vim css/style.css"

new_window "config"
run_cmd "vim _config.yml"
