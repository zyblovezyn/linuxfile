#########################################################################
# File Name: 8-3.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-29
#########################################################################
#!/bin/bash

# 使用&&与||进行混合状态的test

a=24
b=47
if [ "$a" -eq 24 ]&&[ "$b" -eq 47 ];then
	echo "Test #1 succeeds."
else
	echo "Test #1 fails."
fi

if [ "$a" -eq 98 ] || [ "$b" -eq 47 ];then
	echo "Test #2 succeeds,"
else
	echo "Test #2 fails."
fi

if [ "$a" -eq 24 -a "$b" -eq 47 ];then
	echo "Test #3 succeeds."
else
	echo "Test #3 fails."
fi

if [ "$a" -eq 98 -o "$b" -eq 47 ];then
	echo "Test #4 succeeds."
else
	echo "Test #4 fails."
fi

a=rhino
b=crocodile
if [ "$a" = rhino ] && [ "$b" = crocodile ];then
	echo "Test #5 succeeds."
else
	echo "Test #5 fails."
fi
exit 0
