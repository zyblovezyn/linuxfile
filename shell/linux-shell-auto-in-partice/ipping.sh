#########################################################################
# File Name: ipping.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sun 16 Jun 2019 09:19:32 PM CST
#########################################################################
#!/bin/bash

# 无参数
if [ $# -le 0 ];then
	echo "`basename $0` need one parameter"
	exit 64
fi

# 无文件
if [ -e ./"$1" ]
then
	for var in $(cat ./"$1")
	do
		ping -c1 $var &>/dev/null
		if [ $? -eq 0 ];then
			echo "$var is up"
		else
			echo "$var is down"
		fi
	done
fi

