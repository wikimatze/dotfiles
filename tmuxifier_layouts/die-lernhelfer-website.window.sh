window_root "~/git-repositories/die-lernhelfer-website"
new_window "main"

run_cmd "vim"

split_v 20
run_cmd "bundle exec jekyll s"

select_pane 1

