# Day 5 – Conditional Logic + Real Automation

## Concepts Learned
- if / elif / else
- conditions inside loops
- real-world automation use thinking

## Scripts Created
- number-check.sh
- file-type-checker.sh
- log-cleaner.sh

##things to remember
- always use spaces in-between the square brackets in conditions like 
if conditions , for example 
if [ certain-condition ]
then
	......
- while using for loop, its best to add do loops
- -gt greater than 
- -lt lesser than
- -d checks if directory exists
- -f checks if file exists

##Log checker Script find . -name "*.log" -mtime +n 
	- find used to search files and directory
	- . represents current directory
	- -name = match file name
	- "*.log" = all files ending with .log 
	- -mtime 2   → exactly 2 days old
	- -mtime -2  → less than 2 days old
	- -mtime +2   →more than 2 days old
 
