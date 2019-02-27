#########################################################################
# File Name: 8-1.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-29
#########################################################################
#!/bin/bash

# 最大公约数

# 参数检查
ARGS=2
E_BADARGS=65
if [ $# -ne "$ARGS"];then
	echo "Usage:`basename $0` first-number second-number"
	exit $E_BADARGS
fi
gcd()
{
	diviend=$1	# 随便给值
	divisor=$2	# 即使$2大也没有关系

	remainder=1

	until [ "$remainder" -eq 0 ]
	do
		let "remainder=$diviend % $divisor"
		diviend=$divisor
		divisor=$remainder
	done
}

gcd $1 $2

echo 
echo "GCD of $1 and $2 = $diviend";echo

exit 0
