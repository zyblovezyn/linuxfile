#########################################################################
# File Name: 4-5.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-25
#########################################################################
#!/bin/bash

# 位置参数

MINIPARAMS=10
echo
echo "The name of script is \"$0\"." 
echo "The name of script is \"`basename $0`\"" # 去掉目录信息

echo

if [ -n "$1" ]  # 测试变量是否被引用
then
	echo "Parameter #1 is $1" # "#没有被转义"
fi

if [ -n "$2" ]
then
	echo "The parameter #2 is $2"
fi

if [ -n "$3" ]
then
	echo "The Parameter #3 is $3"
fi

#...

if [ -n "${10}" ]
then
	echo "Parameter #10 is ${10}"
fi
echo "--------------------"
echo "All the command-line parameters are:"$*""

if [ $# -lt "$MINIPARAMS" ]
then
	echo
	echo "The script needs at least $MINIPARAMS command-line arguments!"
fi

echo

exit 0

# $# 位置参数的个数
# 

