#########################################################################
# File Name: summary.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-30
#########################################################################
#!/bin/bash

echo $BASH # 指向Bash二进制执行文件的位置

# $BASH_VERSINFO 记录Bash安装信息的一个6元素的数组

for n in 0 1 2 3 4 5
do
	echo "BASH_VERSINFO[$n]=${BASH_VERSINFO[$n]}"
done

# $FUNCNAME 当前函数的名字
xyz23()
{
	echo "FUNCNAME noe existing"
}

xyz23


