all: thesis

thesis:
	# The Sweave package breaks title page formatting, disable it while we don't need it.
	cd paper && R CMD Sweave thesis.Rnw && sed -i '/\\usepackage{Sweave}/d' thesis.tex
	mkdir -p build; cd build && cmake .. && make

clean:
	rm -rf build

.PHONY: thesis clean
