window_root "~/git/die-lernhelfer-website"
new_window "main"

run_cmd "vim"

split_v 20
run_cmd "bundle && bundle exec jekyll s"

select_pane 1

