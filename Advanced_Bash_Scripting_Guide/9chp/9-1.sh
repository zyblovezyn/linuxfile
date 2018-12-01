#########################################################################
# File Name: 9-1.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-01
#########################################################################
#!/bin/bash

# IFS和空白

output_args_one_per_line()
{
	for arg
	do
		echo "[$arg]"
	done
}

echo;echo "IFS=\"\""
echo "-------"
IFS=" "
var=" a  b c   "

output_args_one_per_line $var

echo "----------"
echo "IFS=:"
IFS=:
var=":a::b:c:::"
output_args_one_per_line $var

echo 
exit 0
