#!/bin/bash

mathjax_engine="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"

sed 's/symbf/boldsymbol/g;s/mathds/mathbb/g' $1 |\
	awk 'BEGIN{cuadro=0};/^----$/{if (cuadro == 0) {cuadro=1; print "inicio_cuadro"}else{cuadro=0; print "fin_cuadro"}}; $0 !~ /^----$/' |\
       	pandoc -t html -s -o "${1%.md}.html" --mathjax=$mathjax_engine

sed -i 's/.*inicio_cuadro.*/<div style="background-color: lightblue ; width: 70%; margin: auto">/;s/.*fin_cuadro.*/<\/div>/' "${1%.md}.html"
