#########################################################################
# File Name: 10-19.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun 21 Apr 2019 10:29:25 AM EDT
#########################################################################
#!/bin/bash

outer=1

for a in 1 2 3 4 5;do
	echo "Pass $outer in outer loop."
	echo "-----------------"
	inner=1
	for b in 1 2 3 4 5;do
		echo "Pass $inner in inner loop"
		((inner++))
	done
	((outer++));echo
done
exit 0

