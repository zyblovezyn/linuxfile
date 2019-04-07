#########################################################################
# File Name: 10-3.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-07
#########################################################################
#!/bin/bash

FILES="/usr/sbin/accept
/usr/sbin/pwck
/usr/sbin/chroot"

echo

for file in $FILES
do
	
	if [ ! -e "$file" ] # 检查文件是否存在
	then
		echo "$file does not exist.";echo
		continue
	fi
	ls -l $file | awk '{print $9}"		file size:" $5'
	whatis `basename $file`
	echo
done
