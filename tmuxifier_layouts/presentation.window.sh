window_root "~/bitbucket/presentations"
new_window "md"

run_cmd "vim slides.md"

split_v 20
run_cmd "rvm use ruby-2.0.0 && rabbit -p --slides-per-page 1 -o slides.pdf slides.md"

new_window "pdf"
run_cmd "evince slides.pdf &"

select_window 1
