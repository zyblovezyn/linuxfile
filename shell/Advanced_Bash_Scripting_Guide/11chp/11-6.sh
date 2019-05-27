#########################################################################
# File Name: 11-6.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Tue 21 May 2019 11:11:19 PM CST
#########################################################################
#!/bin/bash

str='A'
SUCCESS=0
OTHER=65

echo -n "Press a key:"
read -n3 key

echo -n "$key" | grep "$str"
if [ "$?" -eq $SUCCESS ];then
	echo "A press"
	exit $SUCCESS
fi

exit 0

