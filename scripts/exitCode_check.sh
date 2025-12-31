#!/ur/bin/env bash

ls /notrealpath >/dev/null 2>&1
if [ $? -ne 0 ]
then 
	echo "Success"
else
	echo "Failure"
fi
