#########################################################################
# File Name: test01.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sun 16 Jun 2019 09:15:11 PM CST
#########################################################################
#!/bin/bash

# $*与$#的区别

echo "print each param from \"\$*\""

for var in "$*"
do
	echo "$var"
done

for var in "$@"
do
	echo "$var"
done
