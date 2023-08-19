export EUNIT=verbose

.PHONY: all
all: fmt test

.PHONY: fmt
fmt:
	erlfmt --verbose -w *.erl

.PHONY: clean
clean:
	rm -rf *.beam

.PHONY: compile
compile: clean
	erlc *.erl

.PHONY: test
test: compile
	erl \
			-noshell \
			-run lesson2_task01_tests test \
			-run lesson2_task02_tests test \
			-run lesson2_task03_tests test \
			-run lesson2_task04_tests test \
			-run lesson2_taskXXX_tests test \
			-run init stop
