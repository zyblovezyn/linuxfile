#########################################################################
# File Name: isnumber.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 30 May 2019 10:09:00 PM CST
#########################################################################
#!/bin/bash

if echo $1 | grep -q '[^0-9]'
then
	echo "this isnot a number"
	exit 64
fi
exit 0

