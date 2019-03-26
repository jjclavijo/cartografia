#!/bin/bash


head='\\noindent\\makebox[\\textwidth][c]{%\n\\noindent\\fcolorbox{MidnightBlue}{CornflowerBlue}{%\n\\begin{minipage}{0.80\\linewidth}'

foot='\\end{minipage}}}'

sed 's/symbf/boldsymbol/g;s/mathds/mathbb/g' $1 |\
	awk 'BEGIN{cuadro=0};/^----$/{if (cuadro == 0) {cuadro=1; print "iniciocuadro"}else{cuadro=0; print "fincuadro"}}; $0 !~ /^----$/' |\
       	pandoc -t latex -s --pdf-engine xelatex |\
	sed 's,.*iniciocuadro.*,'"$head"',;s,.*fincuadro.*,'"$foot"',' |\
	xelatex -jobname="${1%.md}" -output-directory='./pdf'
