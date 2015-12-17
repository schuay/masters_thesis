all: poster presentation thesis
	mkdir -p build; cd build && cmake .. && make

poster: poster/poster.tex

poster/poster.tex: poster/poster.Rnw
	cd poster && R CMD Sweave poster.Rnw
	mkdir -p build/poster
	mv -f poster/poster-*.pdf build/poster/ || true

presentation: presentation/presentation.tex

presentation/presentation.tex: presentation/presentation.Rnw
	cd presentation && R CMD Sweave presentation.Rnw
	mkdir -p build/presentation
	mv -f presentation/presentation-*.pdf build/presentation/ || true

thesis: thesis/thesis.tex

thesis/thesis.tex: thesis/thesis.Rnw thesis/00_frontmatter.Rnw thesis/01_introduction.Rnw thesis/02_definitions.Rnw thesis/03_sequential.Rnw thesis/04_strict.Rnw thesis/05_relaxed.Rnw thesis/06_implementation.Rnw thesis/07_evaluation.Rnw thesis/08_conclusion.Rnw thesis/09_appendices.Rnw thesis/pqplot.Rnw thesis/results/*
	cd thesis && R CMD Sweave thesis.Rnw
	mkdir -p build/thesis
	mv -f thesis/thesis-*.pdf build/thesis/ || true

clean:
	rm -rf build/ \
	       thesis/thesis.tex \
	       poster/poster.tex \
	       presentation/presentation.tex

.PHONY: thesis clean
