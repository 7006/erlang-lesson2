.PHONY: all
all: fmt test

.PHONY: fmt
fmt:
	erlfmt \
		-w *.erl \
		# --verbose

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
		-run lesson2_task05_tests test \
		-run lesson2_task06_tests test \
		-run lesson2_task08_tests test \
		-run lesson2_task09_tests test \
		-run lesson2_task10_tests test \
		-run lesson2_task11_tests test \
		-run lesson2_task12_tests test \
		-run lesson2_task14_tests test \
		-run lesson2_task15_tests test \
		-run lesson2_taskXXX_tests test \
		-run init stop \
		# -env EUNIT verbose