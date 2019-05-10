#########################################################################
# File Name: test2.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Fri 10 May 2019 09:55:30 AM EDT
#########################################################################
#!/bin/bash

while [ $# -gt 0 ];do
	case "$1" in
		-d|--debug)
			DEBUG=1;;
		-c|--conf)
			CONFFILE="$2"
			shift
			if [ ! -f $CONFFILE ];then
				echo "Error:Supplied file doesn't exist!"
				exit $E_CONFFILE
			fi;;
	esac
	shift
done
