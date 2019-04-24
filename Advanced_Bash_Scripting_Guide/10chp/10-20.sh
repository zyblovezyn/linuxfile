#########################################################################
# File Name: 10-20.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun 21 Apr 2019 10:33:13 AM EDT
#########################################################################
#!/bin/bash

# break continue 再循环中的应用

LIMIT=19

echo 
echo "---------------------"

a=0

while [ $a -le "$LIMIT" ]
do
	a=$(($a+1))
	if [ "$a" -eq 3 ] || [ "$a" -eq 11 ]
	then
		continue
	fi
	echo "$a "
done
echo

a=0

while [ "$a" -le $LIMIT ];do
	a=$(($a+1))
	if [ $a -eq 3 ] || [ $a -eq 11 ];then
		break;
	fi
	echo $a
done
echo
exit 0


