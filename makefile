README.md: guessinggame.sh
	echo "The Unix Workbench - Project" > README.md
	echo $(shell date) >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md