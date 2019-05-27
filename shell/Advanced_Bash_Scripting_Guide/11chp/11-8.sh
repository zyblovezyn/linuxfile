#########################################################################
# File Name: 11-8.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Mon 27 May 2019 09:51:31 PM CST
#########################################################################
#!/bin/bash

last="(null)"
cat $0 |
while read line
do
	echo "{$line}"
	last=$line
done

printf "\n all done,last:$last\n"

exit 0
