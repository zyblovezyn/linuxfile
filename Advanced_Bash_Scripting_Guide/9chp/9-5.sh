#########################################################################
# File Name: 9-5.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-02
#########################################################################
#!/bin/bash

# 检查是不是root用户

ROOT_UID=0
if [ "$UID" -eq "$ROOT_UID" ];then
	echo "you are root."
else
	echo "you are just ordinary user"
fi
exit 0

# 检测root的另一种方法

ROOTUSER_NAME=root
username=`id -nu`
if [ $ROOTUSER_NAME = username ];then
	echo "Rooty,toot,toot,You are root"
else
	echo "You are just a regular fella."
fi


