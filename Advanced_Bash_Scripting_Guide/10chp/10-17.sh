#########################################################################
# File Name: 10-17.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun 21 Apr 2019 10:23:49 AM EDT
#########################################################################
#!/bin/bash

LIMIT=10
a=1

while [ "$a" -le $LIMIT ]
do
	echo "$a"
	let "a+=1"
done
echo

((a=1))
while ((a<=LIMIT))
do
	echo "$a"
	((a+=1))
done

echo

exit 0
