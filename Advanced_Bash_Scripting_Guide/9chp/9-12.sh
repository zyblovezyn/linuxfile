#########################################################################
# File Name: 9-12.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-08
#########################################################################
#!/bin/bash

getopt_simple(){
	echo "getopt_simple"
	echo "Parameters are '$*'"
	until [ -z "$1" ];do
		echo "Processing parameter of :'$1'"
		if [ ${1:0:1} = '/' ];then
			tmp=${1:1}
			parameter=${tmp%%=*}
			value=${tmp##*=}
			echo "Parameter:'$parameter',value:'$value'"
			eval $parameter=$value
		fi
		shift
	done
}

getopt_simple $*

echo "test1 is '$test1'"
echo "test2 is '$test2'"

exit 0
# ./9-12.sh /test1=value1 /test2=value2
