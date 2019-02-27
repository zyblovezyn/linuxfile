#########################################################################
# File Name: 8-2.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-29
#########################################################################
#!/bin/bash

# 算术运算符

n=1;echo "$n"

let "n = $n+1"
echo "$n"

: $((n = $n+1))
# ":"是必需的，因为，如果没有":"的话，Bash将
# 尝试把"$((n = $n+1))"解释为一个命令
echo "$n"

((n = n+1))		# 是对: $((n = $n+1))更好的写法
echo $n

n=$(($n+1))
echo $n

: $[n = $n+1]
echo $n

let "n++"
echo "$n"

((n++))
echo "$n"

: $((n++))
echo "$n"

: $[n++]
echo "$n"
exit 0
