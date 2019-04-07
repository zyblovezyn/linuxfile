#########################################################################
# File Name: git-update.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-07
#########################################################################
#!/bin/bash

if [ $# -lt 0 ]
then
	echo '请输入提交注释'
	exit 127
fi

if [ -z $1 ]
then
	echo '参数不能为空'
	exit 126
fi

date=`date +"%Y-%m-%d %H:%M"`
git add .
git commit -m "提交时间:$date 注释:$1"
git push
