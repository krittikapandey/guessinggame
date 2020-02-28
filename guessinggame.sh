#!/bin/bash

function guess()
{
echo "Guess how many number of files exist in current directory"
read response
num_of_files=$(ls | wc -l)
while [ $num_of_files -ne $response ];
do
		let num_of_files=$(ls | wc -l)
		if [[ $response -lt $num_of_files ]];
		then  
			echo "Provided number is less than actual number of files in directory. Please try again" 
			guess
		fi
		if [[ $response -gt $num_of_files ]];
		then  
			echo "Provided number is greater than actual number of files in directory. Please try again." 
			guess
		fi
done
}

guess
echo "Congratulations!! You guess right.."
