#########################################################################
# File Name: 11-16.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Mon 03 Jun 2019 10:10:23 PM CST
#########################################################################
#!/bin/bash

variable="one two three four five"

set -- $variable

first_param=$1
second_param=$2
shift;shift
remaining_params="$*"

echo

echo $first_param
echo $second_param

echo $remaining_params
echo ------------ 
set -- $variable
first_param=$1
second_param=$2

echo $first_param
echo $second_param

echo ----------- 
set --

first_param=$1
second_param=$2
echo $first_param
echo $second_param
exit 0

