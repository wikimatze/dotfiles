window_root "~/ownCloud/latex/vorlagen/cv"

new_window "cv Matthias"
run_cmd "vim Matthias_Guenther_Lebenslauf_deutsch.tex"
split_v 40
run_cmd "vim Matthias_Guenther_Lebenslauf_englisch.tex"

new_window "cv Hanna"
run_cmd "vim Hanna_Lebenslauf_deutsch.tex"
split_v 40
run_cmd "vim Hanna_Lebenslauf_englisch.tex"

select_window 1
new_window "compiling"
run_cmd "pdflatex Matthias_Guenther_Lebenslauf_deutsch.tex && pdflatex Matthias_Guenther_Lebenslauf_englisch.tex && pdflatex Hanna_Lebenslauf_deutsch.tex && pdflatex Hanna_Lebenslauf_englisch.tex"

