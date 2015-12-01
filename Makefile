all: thesis presentation
	mkdir -p build; cd build && cmake .. && make

thesis: thesis/thesis.tex

thesis/thesis.tex: thesis/thesis.Rnw thesis/00_frontmatter.Rnw thesis/01_introduction.Rnw thesis/02_sequential.Rnw thesis/03_definitions.Rnw thesis/04_strict.Rnw thesis/05_relaxed.Rnw thesis/06_implementation.Rnw thesis/07_evaluation.Rnw thesis/08_conclusion.Rnw thesis/pqplot.Rnw thesis/results/*
	cd thesis && R CMD Sweave thesis.Rnw
	mkdir -p build/thesis
	mv -f thesis/thesis-*.pdf build/thesis/

presentation: presentation/presentation.tex

presentation/presentation.tex: presentation/presentation.Rnw
	cd presentation && R CMD Sweave presentation.Rnw
	mkdir -p build/presentation
	mv -f presentation/presentation-*.pdf build/presentation/

clean:
	rm -rf build \
	       thesis/thesis.tex \
	       presentation/presentation.tex

.PHONY: thesis clean
