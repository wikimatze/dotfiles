window_root "~/ownCloud/latex/projekte/ruby"
new_window "text"

run_cmd "vim ruby.tex"

new_window "playground"

run_cmd ""
split_v 20
run_cmd "irb"

select_pane 1

new_window "pdf"
run_cmd "pdflatex ruby.tex && evince -w ruby.pdf"

select_window 1
