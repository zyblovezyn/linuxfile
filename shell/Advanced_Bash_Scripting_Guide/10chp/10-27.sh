#########################################################################
# File Name: 10-27.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sat 11 May 2019 10:31:00 AM EDT
#########################################################################
#!/bin/bash

match_string()
{
	MATCH=0
	NOMATCH=90
	PARAMS=2
	BAD_PARAM=91

	[ $# -eq $PARAMS ] || return $BAD_PARAM

	case "$1" in
		"$2") return $MATCH;;
		   *) return $NOMATCH;;
	   esac
}

a=one
b=two
c=three
d=two

match_string $a
echo $?

match_string $a $b

echo $?

match_string $b $d

echo $?

exit 0


