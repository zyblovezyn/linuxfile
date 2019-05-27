#########################################################################
# File Name: str.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sat 25 May 2019 10:05:48 PM CST
#########################################################################
#!/bin/bash

str1="Not empty"
str2=""

if [[ -n $str1 ]] && [[ -z $str2 ]]
then
	echo str1 is not-empty and str2 is empty
fi
