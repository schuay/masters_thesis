all: thesis

thesis:
	mkdir -p build
	cd paper && R CMD Sweave thesis.Rnw
	cd build && cmake .. && make

clean:
	rm -rf build

.PHONY: thesis clean
