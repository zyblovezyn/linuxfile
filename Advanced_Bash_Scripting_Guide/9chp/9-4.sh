#########################################################################
# File Name: 9-4.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-02
#########################################################################
#!/bin/bash

TIMELIMIT=4

read -t $TIMELIMIT variable <&1

echo
if [ -z "$variable" ];then
	echo "Time out,variable is null"
else
	echo "variable is $variable"
fi

exit 0
