#########################################################################
# File Name: 10-16.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu 18 Apr 2019 11:08:28 AM EDT
#########################################################################
#!/bin/bash

var1=unset
previous=$var1

while echo "previous-variable=$previous"
	echo
	previous=$var1
	[ "$var1" != "end" ]
do
	echo "Input variable #1 (end to exit)"
	read var1
	echo "varibale #1=$var1"
done
exit 0
