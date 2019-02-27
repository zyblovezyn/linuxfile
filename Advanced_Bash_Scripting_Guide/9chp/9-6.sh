#########################################################################
# File Name: 9-6.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-03
#########################################################################
#!/bin/bash

# 通过$* 和$@列出所有的参数

# 多使用几个参数来调用这个脚本，比如"one two three"

E_BADARGS=65

if [ ! -n "$1" ];then
	echo "Usage:`basename $0` argument1 argument2 etc"
	exit $E_BADARGS
fi
echo
index=0 # 初始化数量

echo "Listing args with \"\$*\""
for arg in "$*";do
	echo "Arg #$index=$arg"
	let "index+=1"
done

echo "Entire arg list seen as single word"

echo

index=1 # 重置数量
echo "Listing args with \"\$@\""
for arg in "$@";do  # $@把每个参数作为独立的单词
	echo "Arg #$index=$arg"
	((index++))
done

echo "Arg list seen as separates words"

exit 0
