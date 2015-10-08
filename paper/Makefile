PROJECT = thesis

R      = R
LATEX  = pdflatex
BIBTEX = bibtex

LATEXARGS = -output-directory build/

OUTDIR = build

RFILE = $(PROJECT).Rnw
AFILE = $(OUTDIR)/$(RFILE:.Rnw=.aux)
LFILE = $(RFILE:.Rnw=.tex)
PDF   = $(RFILE:.Rnw=.pdf)

all: $(PDF)

$(PDF): $(RFILE) acronyms.tex bibliography.bib pqplot.Rnw ../results/random.csv
	mkdir -p $(OUTDIR)
	$(R) CMD Sweave $(RFILE)
	$(LATEX) $(LATEXARGS) $(LFILE)
	$(BIBTEX) $(AFILE)
	$(LATEX) $(LATEXARGS) $(LFILE)
	$(LATEX) $(LATEXARGS) $(LFILE)
	mv -f $(OUTDIR)/$(PDF) .
	rm -f $(LFILE) $(PROJECT)-blx.bib

clean:
	rm -rf $(OUTDIR) $(PROJECT).tex $(PROJECT).run.xml
	
dist-clean: clean
	rm -f $(PDF)
