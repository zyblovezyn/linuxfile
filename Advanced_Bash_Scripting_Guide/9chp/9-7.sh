#########################################################################
# File Name: 9-7.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-05
#########################################################################
#!/bin/bash

set -- "First one" "second" "third:one" "" "Fifth::one"
# 设置这个脚本的参数$1 $2等等

echo

c=0
for i in "$*";do
	echo "$((c+=1)):[$i]"
done

echo
c=0
for i in $*;do
	echo "$((c+=1)) : [$i]"
done

echo
c=0
for i in "$@";do
	echo "$((c+=1)) : [$i]"
done

echo 
c=0
for i in $@;do
	echo "$((c+=1)) : [$i]"
done

c=0
echo 
IFS=:
for i in "$*";do
	echo "$((c+=1)) : [$i]"
done

echo
c=0
for i in $*;do
	echo "$((c+=1)) : [$i]"
done

echo 
c=0
for i in "$@";do
	echo "$((c+=1)) : [$i]"
done

echo 
c=0
for i in $@;do
	echo "$((c+=1)) : [$i]"
done
