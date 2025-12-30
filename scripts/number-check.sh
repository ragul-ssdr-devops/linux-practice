#!/usr/bin/env bash

echo "Enter A Number :"
read num
if [ $num -gt 0 ]
then
	echo "$num Is a Positive Number"
elif [ $num -lt 0 ]
then 
	echo "$num Is a Negative NUmber"
else
	echo "Zero"
fi
