#########################################################################
# File Name: 10-10.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun 14 Apr 2019 10:21:46 AM EDT
#########################################################################
#!/bin/bash

directory=${1-`pwd`}
#echo $directory

for file in "$(find $directory -type l)"
do
	echo "$file"
done | sort
exit 0


