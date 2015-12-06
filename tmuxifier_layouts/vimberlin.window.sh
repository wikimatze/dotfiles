window_root "~/git/vimberlin.de"
new_window "main"

run_cmd "vim"

split_v 20
run_cmd "bundle && bundle exec jekyll s"

select_pane 1

new_window "index"
run_cmd "vim index.html"

new_window "layout-base"
run_cmd "vim _layouts/base.html"

new_window "layout-post"
run_cmd "vim _layouts/post.html"

new_window "config"
run_cmd "vim _config.yml"

new_window "app-css"
run_cmd "vim stylesheets/app.css"
