PROJECT=assignment
PDFLATEX=pdflatex
LATEX=latex
BIBTEX=bibtex
BUILDDVI=$(LATEX) $(PROJECT).tex
BUILDPDF=$(PDFLATEX) $(PROJECT).tex

.PHONY: all clean clean-all dvi pdf

all: dvi pdf

dvi:
		$(BUILDDVI)
		$(BIBTEX) $(PROJECT)
		$(BUILDDVI)
		$(BUILDDVI)

pdf:
		$(BUILDPDF)
		$(BIBTEX) $(PROJECT)
		$(BUILDPDF)
		$(BUILDPDF)

clean-all:
		rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.eps *.pdf *.toc *.out *~

clean:
		rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~
