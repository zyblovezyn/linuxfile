#########################################################################
# File Name: 9-10.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-05
#########################################################################
#!/bin/bash

# 在文本文件的段间插入空行

MINLEN=45

while read line;do
	echo $line

	len=${#line}
	if [ "$len" -lt "$MINLEN" ];then
		echo
	fi
done

exit 0

