
LATEX = pdflatex

paper.pdf: paper.tex
	$(LATEX) $<
	$(LATEX) $<

clean:
	rm -f *.aux *.log *.out *.pdf
