#########################################################################
# File Name: 10-12.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed 17 Apr 2019 10:29:09 AM EDT
#########################################################################
#!/bin/bash

echo

for a in 1 2 3 4 5 6 7 8 9 10
do
	echo $a
done

echo;echo

# 使用C语言风格的词法做同样的事情
LIMIT=10

for((a=1;a<=LIMIT;a++))
do
	echo $a
done

echo;echo


for((a=1,b=1;a<=LIMIT;a++,b++))
do
	let "sum=$a-$b"
	echo $sum
done
echo;echo
exit 0
