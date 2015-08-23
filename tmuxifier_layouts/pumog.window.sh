window_root "~/git/pumog"
new_window "files"

run_cmd "vim lib/pumog/commandline.rb"

new_window "specs"
run_cmd "bundle && bundle exec rspec"

select_window 1
