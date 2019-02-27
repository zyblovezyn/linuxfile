#########################################################################
# File Name: 7-5.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-28
#########################################################################
#!/bin/bash

# 数字和字符串比较

a=4
b=5

echo

if [ "$a" -ne "$b" ];then
	echo "$a is not equal $b"
	echo "(arithmetic comparsion)"
fi

echo

if [ "$a" != "$b" ];then
	echo "$a is not equal $b"
	echo "(string comparison)"
fi

echo 
exit 0
