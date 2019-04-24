#########################################################################
# File Name: 10-21.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Wed 24 Apr 2019 10:29:07 AM EDT
#########################################################################
#!/bin/bash

# break n 可以退出n层循环

for outerloop in 1 2 3 4 5;do
	echo "Group: $outerloop"

	for innerloop in 1 2 3 4 5;do
		echo "$innerloop"

		if [ $innerloop -eq 3 ];then
			break 
			# break 2
		fi
	done
done
exit 0
