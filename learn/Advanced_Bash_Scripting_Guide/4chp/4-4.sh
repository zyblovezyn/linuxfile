#########################################################################
# File Name: 4-4.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-25
#########################################################################
#!/bin/bash
# 是整数还是string

a=2334			# 整数
let "a+=1"
echo "a=$a"		# a=2335
echo

b=${a/23/BB}	# 将23替换成BB

echo "b=$b"		# b=BB35
declare -i b
echo "b=$b"     # 即使使用declare命令也不会对此有任何帮助

let "b+=1"
echo "b=$b"
echo

c=BB34
echo "c=$c"
d=${c/BB/23}

echo "d=$d"
let "d+=1"
echo "d=$d"
echo

# 关于空变量怎么处理
e=""
echo "e=$e"    # e=
let "e+=1"	   # 算术操作允许一个空变量
echo "e=$e"    # e=1
echo		   # 空变量将转换成一个整形变量

# 关于未申明的变量怎么样？
echo "f=$f"
let "f+=1"
echo "f=$f"
echo			# 未申明的变量将转换成一个整数变量

# 所以说Bash中的变量都是无类型的。

exit 0
