#########################################################################
# File Name: 10-9.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sat 13 Apr 2019 10:23:43 AM EDT
#########################################################################
#!/bin/bash

directory=/usr/bin/

fstring="Free Software Foundation"

for file in $(find -type f -name '*' | sort)
do
	strings -f $file | grep "$fstring" | sed -e "s%$directory%%"
done
exit 0
