#########################################################################
# File Name: user.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri 16 Nov 2018 08:04:18 AM EST
#########################################################################
#!/bin/bash
if [ $UID -ne 0 ];then
	echo "Noe root user.please run as root"
else
	echo "root user"
fi
