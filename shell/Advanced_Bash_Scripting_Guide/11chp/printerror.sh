#########################################################################
# File Name: printerror.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sun 19 May 2019 10:16:27 AM EDT
#########################################################################
#!/bin/bash

E_BADDIR=65

var=noneexiststent_directory

error(){
	printf "$@" >&2
	echo
	exit $E_BADDIR
}
cd $var || error $"Can't cd do %s." "$var"


