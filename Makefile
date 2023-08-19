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

.PHONY: lesson2_task01_tests
lesson2_task01_tests: compile
	erl -noshell -run lesson2_task01_tests test -run init stop

.PHONY: lesson2_task02_tests
lesson2_task02_tests: compile
	erl -noshell -run lesson2_task02_tests test -run init stop

.PHONY: lesson2_taskXXX_tests
lesson2_taskXXX_tests: compile
	erl -noshell -run lesson2_taskXXX_tests test -run init stop

.PHONY: test
test: lesson2_task01_tests lesson2_task02_tests lesson2_taskXXX_tests
	
