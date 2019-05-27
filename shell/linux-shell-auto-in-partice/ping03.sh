#########################################################################
# File Name: ping03.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Mon 27 May 2019 10:12:15 PM CST
#########################################################################
#!/bin/bash

ip=192.168.1.2

ping -c1 $ip &> /dev/null

if [ $? -eq 0 ]
then
	echo "$ip is up"
else
	echo "$ip is down"
fi
exit 0
