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
	erl -noshell -pa ebin -eval "eunit:test(lesson2_task01_tests, [verbose])" -s init stop

.PHONY: lesson2_task02_tests
lesson2_task02_tests: compile
	erl -noshell -pa ebin -eval "eunit:test(lesson2_task02_tests, [verbose])" -s init stop

.PHONY: test
test: lesson2_task01_tests lesson2_task02_tests
	