#########################################################################
# File Name: 10-18.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun 21 Apr 2019 10:26:32 AM EDT
#########################################################################
#!/bin/bash

END_CONDITION=end

until [ "$var1" = "$END_CONDITION" ];do
	echo "Input variable #1"
	read var1
	echo "variable #1 =$var1"
	echo
done

exit 0
