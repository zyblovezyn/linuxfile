#########################################################################
# File Name: 9-29.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-05
#########################################################################
#!/bin/bash

MAXCOUNT=25 #决定产生多少个随机数

random_numbers()
{
	count=0
	while [ "$count" -lt "$MAXCOUNT" ]
	do
		number=$RANDOM
		echo "$number"
		let "count+=1"
	done
}

echo
RANDOM=1
random_numbers

echo 

RANDOM=2
random_numbers
echo

SEED=$(head -1 /dev/urandom | od -N 1 | awk '{print $2}')

RANDOM=$SEED
random_numbers
echo
exit 0

