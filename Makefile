all: thesis

thesis:
	mkdir -p build; cd build && cmake .. && make

clean:
	rm -rf build

.PHONY: thesis clean
