#########################################################################
# File Name: 9-16.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-24
#########################################################################
#!/bin/bash

E_NO_ARGS=65

if [ $# -eq 0 ] 
then
	echo "please invoke this script whith one or more command-line arguments"
	exit $E_NO_ARGS
fi

var01=abcdEFGH28ij
echo "var01=${var01}"
echo "length of var01=${#var01}"

var02="abcd EFGH28ij"
echo "var02=${var02}"
echo "length of var02=${#var02}"

echo "Number of command-line arguments pased to script=${#@}"
echo "Number of command-line arguments pased to script=${#*}"
exit 0
