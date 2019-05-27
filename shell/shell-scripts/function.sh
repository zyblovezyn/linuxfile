#########################################################################
# File Name: function.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sat 25 May 2019 09:45:35 PM CST
#########################################################################
#!/bin/bash

fname(){
	echo $1,$2;
	echo "$@"
	echo "$*"
	return 0
}
fname 1 2 3 4 5
