# Day 3 – Shell Script Basics

## What I Learned
- What a shell script is
- How to create `.sh` files
- What `#!/bin/bash` means
- chmod +x to make executable
- Running scripts:
  - bash hello.sh
  - ./hello.sh (by changing to executable file using chmod 755 permission
 modifier .

#!/bin/bash	Hard-coded Bash path

#!/usr/bin/env bash	Finds Bash automatically

## Commands Used
- nano
- chmod +x , also chmod 755 for -rwxr-xr-x permission to file
- ls -l
File-validation script code Practice
   PTR : Always use env method 
	Check for minor cosmetics in conditional statements
	end the if block with fi

#!/usr/bin/env bash

echo "Enter the filename"
read filename
if [ -f "$filename" ]
then
        echo "$filename Exists"
else
        echo "$filename not Found"
fi



