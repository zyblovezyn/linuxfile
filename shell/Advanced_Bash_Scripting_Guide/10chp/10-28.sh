#########################################################################
# File Name: 10-28.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sun 12 May 2019 11:20:52 AM EDT
#########################################################################
#!/bin/bash

SUCCESS=0
FAILUR=100

isalpha()
{
	if [ -z "$1" ];then
		return $FAILUR
	fi
	case "$1" in
		[a-zA-Z]*) return $SUCCESS;;
				*) return $FAILUR;;
	esac
}

isalpha2()
{
	[ $# -eq 1 ] || return $FAILUR
	case $1 in
		*[!a-zA-Z]*|"")return $FAILUR;;
	*) return $SUCCESS;;
esac
}

isdigit()
{
	[ $# -eq 1 ] || return $FAILUR

	case $1 in
		*[!0-9]*|"") return $FAILUR;;
		*)return $SUCCESS;;
	esac
}

check_var(){
	if isalpha "$@"
	then
		echo "\"$*\" begin whit an alpha character."
		if isalpha2 "$@"
		then
			echo "\"$*\" contains only alpha character."
		else
			echo "\"$*\" contains atleast one non-alpha character."
		fi
	else
		echo "\"$*\" contains atleast a non-alpha character."
	fi
	echo
}

digit_check()
{
	if isdigit "$@"
	then
		echo "\"$*\" contains only digits [0-9]"
	else
		echo "\"$*\" has at least one non-digits [0-9]"
	fi
	echo
}

a=23skidoo
 b=H3llo
 c=-What?
 d=What?
 e=`echo $b` # 命令替换.
 f=AbcDef
 g=27234
 h=27a34
 i=27.34

 check_var $a
 check_var $b
 check_var $c
 check_var $d
 check_var $e
 check_var $f
 check_var # 没有参数传进来,将发生什么?
 #
 digit_check $g
 digit_check $h
 digit_check $i


 exit 0 # S.C 改进过这个脚本
