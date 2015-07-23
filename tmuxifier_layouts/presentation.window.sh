window_root "~/bitbucket/presentations"
new_window "slides"

run_cmd "vim slides.md"

split_v 20
run_cmd "rvm use ruby-1.9.3-p551"
run_cmd "rabbit -p --slides-per-page 1 -o slides.pdf slides.md"

new_window "pdf"
run_cmd "evince slides.pdf &"

select_window 1
