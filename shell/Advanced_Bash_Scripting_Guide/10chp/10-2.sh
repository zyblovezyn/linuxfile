#########################################################################
# File Name: 10-2.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-06
#########################################################################
#!/bin/bash

for planet in "Mercury 36" "Venus 67" "Earth 93"
do
	set -- $planet #解析变量"planet"并设置位置参数
	
	echo "$1	$2,000,000 miles from the sun"
done
exit 0
