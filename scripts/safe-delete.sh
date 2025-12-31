file=$1
if [ -z "$file" ]
then
	echo "Usage ./safe-delete.sh filename"
	exit 1
fi
if [ -f "$file" ]
then 
	echo "Filename : $file"
	echo "Do you Want to delete this file(simulation)?: yes/no"
	read choice 
	if [ "$choice" = "yes" ]
	then
	 	echo "Simulating Delete .. rm '$file' "
	else
		echo "Cancelled"
	fi
else 
	echo "File doesnt exist"
fi
