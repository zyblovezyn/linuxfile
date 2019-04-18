#########################################################################
# File Name: 10-13.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed 17 Apr 2019 10:35:08 AM EDT
#########################################################################
#!/bin/bash

EXCEPTED_ARGS=2
E_BADARGS=65

# 检查参数个数是否正确
if [ $# -ne $EXCEPTED_ARGS ]
then
	echo "Usages:`basename $0` phone# test-file"
	echo $E_BADARGS
fi

if [ ! -f "$2" ]
then
	echo "File $2 is not exists text file"
	exit $E_BADARGS
fi

fax make $2

for file in $(ls $2.0*)
do
	file="$file $file"
done

efax -d /dev/tty3 -o1 -t "T$1" $fil

exit 0

