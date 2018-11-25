#########################################################################
# File Name: 4-2.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-24
#########################################################################
#!/bin/bash
# '裸体'变量

echo

# 变量什么时候是“裸体”的，比如前边少了$的时候.
# 但它被赋值的时候，而不是被引用的时候

a=879
echo "The value of \"a\" is $a."

# 使用let赋值
let a=16+5
echo "The value of \"a\" is now $a."

echo 

# 在for循环中
for a in 7 8 9 11
do
	echo -n "$a"
done

# 在read命令状态中
echo -n "Enter \"a\""
read a
echo "The value of \"a\" is now $a."

echo

exit 0
