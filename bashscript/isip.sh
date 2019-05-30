#########################################################################
# File Name: /root/linuxfile/bashscript/isip.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 30 May 2019 10:19:27 PM CST
#########################################################################
#!/bin/bash

echo $1 | egrep -q "[0-2]?[0-9]?[0-9]\.[0-2]?[0-9]?[0-9]\.[0-2]?[0-9]?[0-9]\.[0-2]?[0-9]?[0-9]"
if [ $? -eq 0 ];then
	exit 0
else
	echo "$1 is not ip address"
fi
exit 64
