window_root "~/git/dielernhelfer"
new_window "main"

run_cmd "vim"

split_v 20
run_cmd "bundle exec padrino s"

select_pane 1

new_window "application.erb"
run_cmd "vim admin/views/layouts/application.erb"

new_window "lernhelfer notes"
run_cmd "vim ~/ownCloud/notes/lernhelfer.txt"
