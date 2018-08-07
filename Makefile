
LATEX = pdflatex
BIBTEX = bibtex

SRC =	abstract.tex		\
	cintegration.tex	\
	conclusion.tex		\
	intro.tex		\
	implementation.tex	\
	memrec.tex		\
	related.tex		\
	results.tex

BIB = bibliography.bib

paper.pdf: paper.tex $(SRC) $(BIB)
	$(LATEX) $<
	$(BIBTEX) paper
	$(LATEX) $<
	$(LATEX) $<

clean:
	rm -f *.aux *.log *.out *.pdf *.bbl *.blg
