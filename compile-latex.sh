#!/bin/bash


head='\\noindent\\makebox[\\textwidth][c]{%\n\\noindent\\fcolorbox{MidnightBlue}{CornflowerBlue}{%\n\\begin{minipage}{0.80\\linewidth}'

foot='\\end{minipage}}}'

awk 'BEGIN{cuadro=0};/^----$/{if (cuadro == 0) {cuadro=1; print "iniciocuadro"}else{cuadro=0; print "fincuadro"}}; $0 !~ /^----$/' $1 |\
       	pandoc -t latex -s --pdf-engine xelatex |\
	sed '/usepackage{xcolor}/d;s,.*iniciocuadro.*,'"$head"',;s,.*fincuadro.*,'"$foot"',' |\
	xelatex -jobname="${1%.md}" -output-directory='./pdf'
