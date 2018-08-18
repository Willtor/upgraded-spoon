
LATEX = pdflatex
BIBTEX = bibtex

SRC =	abstract.tex		\
	cds-implementation.tex	\
	cintegration.tex	\
	closetothemachine.tex	\
	conclusion.tex		\
	intro.tex		\
	implementation.tex	\
	memrec.tex		\
	related.tex		\
	results.tex

GFX =	gfx/atomic.png		\
	gfx/extern.png		\
	gfx/figure-template.png	\
	gfx/import.png		\
	gfx/packed.png		\
	gfx/seemless-integration.png	\
	gfx/typedef.png		\
	gfx/types.png		\
	gfx/window-find.png	\
	gfx/BinaryTreeLight.pdf		\
	gfx/BinaryTreeMedium.pdf	\
	gfx/HashTableLight.pdf		\
	gfx/HashTableMedium.pdf		\
	gfx/RelativePerf.pdf		\
	gfx/ShavitLotanQueue.pdf	\
	gfx/SkipListLight.pdf		\
	gfx/SkipListMedium.pdf		\
	gfx/SprayList.pdf

BIB = bibliography.bib

paper.pdf: paper.tex $(SRC) $(BIB) $(GFX)
	$(LATEX) $<
	$(BIBTEX) paper
	$(LATEX) $<
	$(LATEX) $<

clean:
	rm -f *.aux *.log *.out *.pdf *.bbl *.blg
