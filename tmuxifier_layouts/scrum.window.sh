window_root "~/ownCloud/latex/projekte/scrum"
new_window "text"

run_cmd "vim scrum.tex"

new_window "pdf"
run_cmd "pdflatex scrum.tex && evince scrum.pdf &"

select_window 1
