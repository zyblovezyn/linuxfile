#########################################################################
# File Name: 7-4.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-28
#########################################################################
#!/bin/bash

# 测试死的链接

# 如果没有给脚本传递参数，那么就使用当前目录
# 否则使用传递进来的参数

[ $# -eq 0 ] && directorys=`pwd` || directorys=$@

linkchk(){
	for element in $1/*;do
		[ -h "$element" -a ! -e "$element" ] && echo \"$element\"
		[ -d "$element" ] && linchk $element
		# of course, '-h' tests for symbolic link,'-d' for directorys
	done
}


for directory in $directorys;do
	if [ -d $directory ]
	then
		linkchk $directory
	else
		echo "$directory is not directory."
	fi
done

exit 0
