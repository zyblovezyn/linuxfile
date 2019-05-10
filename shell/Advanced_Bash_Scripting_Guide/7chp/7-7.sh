#########################################################################
# File Name: 7-7.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-28
#########################################################################
#!/bin/bash

NOARHS=65
NOTFOUND=66
NOTGZIP=67

if [ $# -eq 0 ];then
	echo "Usage:`basename $0` filename">&2
	exit $NOARHS
fi

filename=$1

if [ ! -f "$filename" ];then
	echo "File $filename not found!">&2
	exit $NOTFOUND
fi

if [ ${filename##*.} != "gz" ];then
	echo "File $1 is not a gzipped file."
	exit $NOTGZIP
fi

zcat $1 | more

exit $?

