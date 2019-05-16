#########################################################################
# File Name: 10-29.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 16 May 2019 10:04:47 AM EDT
#########################################################################
#!/bin/bash

echo

select vegetable in "beans" "carrots" "onlons" "rutabages"
do
	echo 
	echo "Your favorite is $vegetable"
	echo "Yuck!"
	echo
	break
done
exit 0
