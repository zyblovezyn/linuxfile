#########################################################################
# File Name: debug.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sat 25 May 2019 09:41:58 PM CST
#########################################################################
#!/bin/bash

for i in {1..6}
do
	set -x
	echo $i
	set +x
done
echo "Script executed"



