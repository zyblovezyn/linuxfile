#########################################################################
# File Name: 10-22.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Wed 24 Apr 2019 10:58:08 AM EDT
#########################################################################
#!/bin/bash

for outer in 1 2 3 4 5
do
	echo "Group:$outer"

	for inner in 1 2 3 4 5 6 7 8 9 10;do
		if [ $inner -eq 7 ];then
			continue 2;
	    fi
		echo $inner
	done
done
exit 0
