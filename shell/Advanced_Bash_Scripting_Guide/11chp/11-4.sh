#########################################################################
# File Name: 11-4.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Tue 21 May 2019 11:02:25 PM CST
#########################################################################
#!/bin/bash

#不带变量参数的read命令，会把输入写到$REPLY

echo

echo -n "Enter a value:"

read var

echo "\"var\" = $var"

echo

echo -n "Enter another value:"
read
var=$REPLY

echo "\"var\" = $var"

exit 0

