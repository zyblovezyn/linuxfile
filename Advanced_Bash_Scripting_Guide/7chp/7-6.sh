#########################################################################
# File Name: 7-6.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-28
#########################################################################
#!/bin/bash

# 测试字符串是否为null

if [ -n $string1 ];then # -n 字符串不为null
	echo "String \"string1\" is not null"
else
	echo "String \"string1\" is null"
fi
echo

if [ -n "$string1"];then    
	echo "String \"string1\" is not null"
else
	echo "String \"string1\" is null"
fi

echo 

if [ $string1 ];then
	echo "String \"string1\" is not null"
else
	echo "String \"string1\" is null"
fi

echo

string1=initialized

if [ $string1 ];then
	echo "String \"string1\" is not null"
else
	echo "String \"string1\" is null"
fi

string1="a=b"
if [ $string1 ];then
	echo "String \"string1\" is not null"
else
	echo "String \"string1\" is null"
fi





