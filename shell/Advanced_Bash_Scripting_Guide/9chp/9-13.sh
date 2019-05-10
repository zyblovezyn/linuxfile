#########################################################################
# File Name: 9-13.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-08
#########################################################################
#!/bin/bash

stringZ=23skidoo1

# Bash 的第一个字符从0开始
# Awk  的第一个字符从1开始

echo ${stringZ:2:4}

echo | awk '
{
	print substr(""${stringZ}"",3,4)
}'

exit 0
