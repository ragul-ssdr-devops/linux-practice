# Day 7 – Mini Automation Project

## Built Tool
Directory Summary Tool (`directory-summary-project.sh`)

## Concepts Applied
- arguments
- input validation
- loops + conditions logic
- safe scripting
- find / wc / awk / du usage / exec 

## Test Cases Done
- valid directory
- invalid directory
- missing argument

#contents of the project script 
#----------------------------------------------------------------------------
#!/usr/bin/env bash

dir="$1"
if [ -z "$dir" ]
then
        echo "Usage : ./dir-summary-proj <directory name>"
        exit 1
fi

if [ ! -d "$dir" ]
then
        echo "Directory doesnt exist"
        exit 1
fi
echo "Analyzing Directory : $dir"
echo "-------------------------------"

#counting  files

fileCount=$(find "$dir" -type f | wc -l)
echo "Number of files : $fileCount"

#counting directories

dirCount=$(find "$dir" -type d | wc -l)
echo "Number of directories : $dirCount"

#biggest file
biggest=$(find "$dir" -type f -exec du -h {} + 2>/dev/null | sort -hr | head -1 | awk '{print $2}')
echo "The biggest file is $biggest"

#total size
total_size=$(du -sh "$dir" | awk '{print $1}')
echo "Total size is $total_size"





