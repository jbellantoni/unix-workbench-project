#/usr/bin/env bash

all: README.md

README.md:
	echo "# The Unix Workbench Coursera Project " > README.md
	echo -n "Time README.md was created: " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean: 
	rm README.md
