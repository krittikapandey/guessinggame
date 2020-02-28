README.md:
	echo "Project Name: \n" >> README.md
	echo "Guessing Game \n">> README.md
	echo "Date and Time when make was run: \n" >> README.md
	date +%d-%m-%Y_%H-%M-%S >> README.md
	echo "\nNumber of lines in guessinggame.sh file: \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
