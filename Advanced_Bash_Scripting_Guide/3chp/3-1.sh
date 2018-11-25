#########################################################################
# File Name: 3-1.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri 16 Nov 2018 07:22:36 AM EST
#########################################################################
#!/bin/bash
File=/etc/fstab

{
	read line1
	read line2
}<$File

echo "first line in $File is:"
echo "$line1"
echo "second line in $File is:"
echo "$line2"

exit 0
