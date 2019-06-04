#########################################################################
# File Name: 11-18.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Tue 04 Jun 2019 10:06:38 PM CST
#########################################################################
#!/bin/bash

ARGS=2
E_WRONGARGS=65

if [ $# -ne $ARGS ]
then
	echo "Usage: `basename $0` filename column-number"
	exit $E_WRONGARGS
fi

filename=$1
column_number=$2

export column_number

awkscript='{total+=$ENVIRON["column_number"]}
END {print total}'

awk "$awkscript" "$filename"
exit 0
