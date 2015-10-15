all: thesis

thesis: thesis/thesis.tex
	mkdir -p build; cd build && cmake .. && make

thesis/thesis.tex: thesis/thesis.Rnw thesis/00_frontmatter.Rnw thesis/01_introduction.Rnw thesis/02_sequential.Rnw thesis/03_definitions.Rnw thesis/04_strict.Rnw thesis/05_relaxed.Rnw thesis/06_implementation.Rnw thesis/07_evaluation.Rnw thesis/08_conclusion.Rnw
	# The Sweave package breaks title page formatting, disable it while we don't need it.
	cd thesis && R CMD Sweave thesis.Rnw && sed -i '/\\usepackage{Sweave}/d' thesis.tex

clean:
	rm -rf build

.PHONY: thesis clean
