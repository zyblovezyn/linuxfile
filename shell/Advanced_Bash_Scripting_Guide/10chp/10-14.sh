#########################################################################
# File Name: 10-14.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu 18 Apr 2019 10:55:27 AM EDT
#########################################################################
#!/bin/bash

var=1
LIMIT=10

while [ "$var" -lt "$LIMIT" ]
do
	echo "$var"
	let "var=$var+1"
done

exit 0
