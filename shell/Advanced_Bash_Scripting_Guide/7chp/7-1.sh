#########################################################################
# File Name: 7-1.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-25
#########################################################################
#!/bin/bash

# 技巧:
# 如果不确定一个特定的条件如何判断.
# +在一个if-test结构中测试它

echo

echo "Testing \"0\""
if [ 0 ]
then
	echo "0 is true"
else
	echo "0 is false"
fi

echo

echo "Testing \"1\""
if [ 1 ]
then
	echo "1 is true"
else
	echo "1 is false"
fi

echo 

echo "Testing \"-1\""
if [ -1 ]
then
	echo "-1 is true"
else
	echo "-1 is false"
fi

echo 

echo "Testing \"NULL\""
if [ ]
then
	echo "NULL is true"
else
	echo "NULL is false"
fi

echo 

echo "Testing \"xyz\""
if [ xyz ]
then
	echo "Random string is true"
else
	echo "Random string is false"
fi

echo

echo "Testing \"\$xyz\""
if [ $xyz ]	# 测试$xyz是否为null,但是...(明显没有定义)
then		# 只不过是一个未定义的变量
	echo "Uninitialized variable is true"
else
	echo "Uninitialized variable is false"
fi

echo 

echo "Testing \"-n \$xyz\""
if [ -n "$xyz" ]
then
	echo "Uninitialized variable is true."
else
	echo "Uninitialized variable is false."
fi

echo

xyz=		# 初始化了，但是将其设置为空值
echo "Testing \"-n \$xyz\""
if [ -n $xyz ]
then
	echo "NULL variable is true."
else
	echo "NULL variable is false."
fi

echo 

# 什么时候是"false"为true?

echo "Testing \"false\""

if [ "false" ]
then
	echo "\"false\" is true"
else
	echo "\"false\" is false"
fi

echo

echo "Testing \"\$false\""
if [ "$false" ]
then
	echo "\"\$false\" is true"
else
	echo "\"\$false\" is false"
fi

echo 

exit 0

