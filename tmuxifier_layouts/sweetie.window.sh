window_root "~/git/sweetie"
new_window "files"

run_cmd "vim lib/sweetie/helper.rb"

new_window "specs"
run_cmd "bundle && bundle exec rspec"

select_window 1
