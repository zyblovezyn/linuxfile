#########################################################################
# File Name: test1.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Fri 10 May 2019 09:51:49 AM EDT
#########################################################################
#!/bin/bash

E_PARM=65
case "$1" in
	"") echo "Usage:${0##*/} <filename>";exit $E_PARAM;;
-*) FILENAME=./$1;;
*)FILENAME=$1;;
esac
echo $FILENAME
exit 0
