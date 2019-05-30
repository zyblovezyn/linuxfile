#########################################################################
# File Name: ping03.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Mon 27 May 2019 10:12:15 PM CST
#########################################################################
#!/bin/bash

#ip=192.168.1.2
read -p "请输入IP地址：" ip
sh /root/linuxfile/bashscript/isip.sh $ip
if [ $? -ne 0 ];then
	exit 64
fi
ping -c1 $ip &> /dev/null

if [ $? -eq 0 ]
then
	echo "$ip is up"
else
	echo "$ip is down"
fi
exit 0
