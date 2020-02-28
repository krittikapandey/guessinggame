#!/bin/bash

function guess()
{
echo "Guess how many number of files exist in current directory"
read response
total_number_files=$(ls -1A | wc -l)
while [ $total_number_files -ne $response ];
do
		#let num_of_files=$((ls && ls -d .!(|.)) | wc -l)
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
#else
#echo "you input wrong. Please guess the input in integer format" 
#fi
}

guess
echo "Congratulations!! You guess right.."
