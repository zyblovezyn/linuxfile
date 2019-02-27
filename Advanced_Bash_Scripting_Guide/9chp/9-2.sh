#########################################################################
# File Name: 9-2.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-02
#########################################################################
#!/bin/bash

# 时间输入

TIMELIMIT=3 
PrintANswer()
{
	if [ "$Answer" = TIMEOUT ];then
		echo $Answer
	else
		echo "Your favorite veggie is $Answer"
	fi
}

TimeOn()
{
	sleep $TIMELIMIT && kill -s 14 $$ &
}
Int14Vector()
{
	answer="TIMEOUT"
	PrintANswer
	exit 14
}
trap Int14Vector 14
echo "What is you favorite vegetable."
TimeOn
read answer
PrintANswer
exit 0
