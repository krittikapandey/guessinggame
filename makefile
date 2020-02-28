README.md:
	echo "Guessing Game" >> README.md
	echo "Date and Time when make was run:" >> README.md
	date +%d-%m-%Y_%H-%M-%S >> README.md
	echo "Number of lines in guessinggame.sh file:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
