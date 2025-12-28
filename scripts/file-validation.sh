#!/usr/bin/env bash

echo "Enter the filename"
read filename
if [ -f "$filename" ]
then
	echo "$filename Exists"
else
	echo "$filename not Found"
fi
