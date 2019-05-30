#########################################################################
# File Name: 11-11.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 30 May 2019 09:43:40 PM CST
#########################################################################
#!/bin/bash

y=`eval ls -l`
echo $y
echo
echo "$y"
echo;echo
y=`eval df`
echo $y
echo

for i in 1 2 3 4 5;do
	eval value=$i
	echo $value
done

for i in ls df;do
	value=eval $i
	echo $value
done
exit 0


