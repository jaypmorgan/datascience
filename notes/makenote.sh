#!/bin/bash

printf 'Title: '
read TITLE
FILENAME="$(date --iso-8601='seconds') - $TITLE.tex"
touch "$FILENAME"
echo """\\documentclass[a4paper]{article}
\\usepackage{fancyNotes}
\\title{$TITLE}
\\begin{document}


\\end{document}""" >> "$FILENAME"
vim "$FILENAME"
