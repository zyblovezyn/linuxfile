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

echo "$PATH"
echo "-------"
PATH=${APTH}:/opt/bin #将/opt/bin目录附加到$PATH变量中
					  #这是在脚本中添加目录到$PATH中的简便方法，
					  #这样在这个脚本退出后，$PATH将恢复原样
echo "$PATH"

echo "------------------------------"

E_WRONG_DIRECTORY=73

clear

TargetDirectory=/home/bozo/projects/GreatAmericanNovel

cd $GreatAmericanNovel
echo "Deleting stale files in $GreatAmericanNovel"

if [ "$PWD" != "$TargetDirectory" ];then
	echo "Wrong directory"
	echo "In $PWD,rather than $TargetDirectory"
	echo "Bailing out"
	exit $E_WRONG_DIRECTORY
fi

rm -rf *
rm .[A-Za-z0-9]*   # 删除.文件(隐含文件)

rm -f .[^.]*..?*    # 删除以多个..开头的文件

echo "done"
echo "Old files deleted in $TargetDirectory"
echo
