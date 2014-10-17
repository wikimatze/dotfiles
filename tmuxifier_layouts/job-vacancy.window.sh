window_root "~/ownCloud/git-repositories/job-vacancy"
new_window "job-vacancy"

run_cmd "vim"

split_v 20
run_cmd "bundle exec rspec spec"

new_window "sqlite database"
run_cmd "sqlite3 db/job_vacancy_development.db"

select_pane 1

