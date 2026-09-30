#!/bin/bash
for f in *.tex; do
  [ "$f" = "template.tex" ] && continue
  pdflatex -interaction=nonstopmode "$f" || exit 1
done
