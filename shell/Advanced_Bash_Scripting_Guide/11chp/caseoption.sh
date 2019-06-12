#########################################################################
# File Name: caseoption.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Wed 12 Jun 2019 10:16:48 PM CST
#########################################################################
#!/bin/bash

while getopts ":abcde:fg" Option
do
	case $Option in
		a);;
		b);;
		c);;
	esac
done
shift $(($Option-1))
# 将参数指针向下移动


