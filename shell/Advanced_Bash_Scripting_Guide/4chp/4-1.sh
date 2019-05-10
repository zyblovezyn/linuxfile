#########################################################################
# File Name: 4-1.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-20
#########################################################################
#!/bin/bash

# 变量的赋值与替换

a=375
hello=$a

echo hello

echo $hello
echo ${hello} #同上

echo "$hello"
echo "${hello}"

echo


hello="A B  C    D"
echo $hello		#A B C D
echo "$hello"   #A B   C    D
# echo $hello和echo "$hello"将出现不同的结果
#
# Quoting a variable preserves whitespace.
# 引用一个变量将保留其中的空白，当然，如果是变量替换就不会保留了。

echo

echo '$hello'
#     ^		^
# 全引用的引用
#+ 将导致“$”成为一个单独的字符。

# 注意两种引用的不同结果


hello=		#设置为空值
echo "\$hello(null value)=$hello"
# 设置为空值与unset不同
#

# 可以在同一行上设置多个变量。
#+ 要以空白隔开
# 小心，这回降低可读性和可移植性

var1=21 var2=22 var3=$V3
echo
echo "var1=$var1 var2=$var2 var3=$var3"
# 在老版本shell上，可能会有问题

echo;echo

numbers="one two three"


other_numbers="1 2 3"
# 如果变量中有空白，那么引用就有必要了。
#

echo "numbers=$numbers"
echo "other_numbers=$other_numbers"		# other_numbers=1 2 3
echo

echo "uninitialized_variable=$uninitialized_variable"
# Uninitialized 变量为空值(根本就没有赋值)。
uninitialized_variable=		# 声明，但是没有被初始化
							#+ 其实和前面设置为空值的作用一样。
echo "uninitialized_variable=$uninitialized_variable"
							# 还是一个空值


uninitialized_variable=23	#赋值
unset uninitialized_variable	# Unset it
echo "uninitialized_variable=$uninitialized_variable"
							 # 还是空值、

echo 

# 一个空值变量，或者是根本就没有声明的变量，在赋值之前使用它可能会引起问题。
# 但是还可以用来做算术运算

echo "$uninitialized"	#(blank line)
let "uninitialized+=5"	# Add 5 to it
echo "$uninitialized"	# 5

# 对于一个空值变量在做算术操作的时候，就好象它的值为0一样。


exit 0











