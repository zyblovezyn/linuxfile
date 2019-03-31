#########################################################################
# File Name: 9-21.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-03-31
#########################################################################
#!/bin/bash
func1(){
	echo this is a function
}

declare -f # 列出之前所有的函数
echo

declare -i var1
var1=2367
echo "var1 declare as $var1"
var1=var1+1
echo "var1 incremented by 1 is $var1"
var1=2367.1
echo "var1 is still $var1"


declare -r var2=13.36
echo "var2 declare as $var2"

var2=13.37

echo "var2 is still $var2"
exit 0
