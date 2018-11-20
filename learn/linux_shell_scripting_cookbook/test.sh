#########################################################################
# File Name: test.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri 16 Nov 2018 08:37:44 AM EST
#########################################################################
#!/bin/bash
no=100
echo "obase=2;$no" | bc
no=1100100
echo "obase=10;ibase;$no" | bc
echo
echo "sqrt(100)" | bc
echo "10^10" | bc

echo
echo "数组"
# 数组
array_var=(1 2 3 4 5 6)
echo ${array_var[0]}

echo ${array_var[*]}   # 打印数组

echo ${array_var[@]}	# 打印数组

echo ${#array_var[*]}	# 数组长度

# 关联数组
declare -A fruit_value
fruit_value=([apple]='100 dollars' [orange]='150 dollars')
echo "Apple coats ${fruit_value[apple]}"

echo ${!array_var[*]}
echo ${!fruit_value[*]}

echo

echo -n Count:
tput sc
count=0

#while true
#do
#	if [ $count -lt 1 ]
#	then
#		let count++
#		sleep 1
#		tput rc
#		tput ed
#		echo -n $count
#	else
#		exit 0
#	fi
#done


echo 
fpath="/etc/passwd"
if [ -e $fpath ];then
	echo File Exists
else
	echo Does not exists
fi



echo
str1="not empty"
str2=""
if [[ -n $str1 ]] && [[ -z $str2 ]];then
	echo str1 is not empty and str2 is empty
fi

echo $* '#'

