window_root "$HOME/git-repositories/padrinorb-website"
new_window "main"

run_cmd "vim"

split_v 20
run_cmd "bundle exec jekyll s"

select_pane 1

new_window "layout-default"
run_cmd "vim _layouts/default.html"

new_window "css-style"
run_cmd "vim _layouts/style.css"

new_window "config"
run_cmd "vim _config.yml"
