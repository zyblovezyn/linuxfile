#########################################################################
# File Name: 11-13.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sun 02 Jun 2019 10:00:27 PM CST
#########################################################################
#!/bin/bash

setvar_rot_13()
{
	local varname=$1 varvalue=$2
	eval $varname='$(echo "$varvalue" | tr a-z n-za-m)'
}

setvar_rot_13 var "foobar"
echo $var

setvar_rot_13 var "$var"
echo $var

exit 0
