window_root "~/git-repositories/job-vacancy"
new_window "job-vacancy"

run_cmd "vim"

split_v 20
run_cmd "bundle exec padrino s"
split_h 80
run_cmd "bundle exec rspec spec"

select_pane 1

