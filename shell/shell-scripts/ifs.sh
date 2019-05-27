#########################################################################
# File Name: ifs.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sat 25 May 2019 09:58:52 PM CST
#########################################################################
#!/bin/bash

data="name,sex,rollno,location"
oldifs=$IFS
IFS=,
for item in $data
do
	echo Item: $item
done
IFS=$oldifs
exit 0
