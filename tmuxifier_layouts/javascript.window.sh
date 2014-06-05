window_root "~/ownCloud/latex/projekte/javascript"
new_window "text"

run_cmd "vim javascript.tex"

new_window "pdf"
run_cmd "pdflatex javascript.tex"

