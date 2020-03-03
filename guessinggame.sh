#!/bin/bash

function guess()
{
echo "Guess how many number of files exist in current directory"
read response
total_number_files=$(ls -1A | wc -l)
if [[ $response =~ ^[+-]?[0-9]+$ ]]
    then
while [ $total_number_files -ne $response ];
do
		if [[ $response -lt $total_number_files ]];
		then  
			echo "Provided number is less than actual number of files in directory. Please try again" 
			guess
		fi
		if [[ $response -gt $total_number_files ]];
		then  
			echo "Provided number is greater than actual number of files in directory. Please try again." 
			guess
		fi
done
else

	echo "Please enter integer only"
	guess
fi
}

guess
echo "Congratulations!! You guess right.."
