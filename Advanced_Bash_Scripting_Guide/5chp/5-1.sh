#########################################################################
# File Name: 5-1.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-25
#########################################################################
#!/bin/bash

# echo 一些诡异的变量

var="'(]\\{}\$\""
echo $var
echo "$var"

echo 

IFS='\'
echo $var		# \转换成空格了?
echo "$var"

exit 0
