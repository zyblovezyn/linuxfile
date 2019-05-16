#########################################################################
# File Name: 10-30.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 16 May 2019 10:08:41 AM EDT
#########################################################################
#!/bin/bash

echo

choise_of()
{
	select vegetable
	do
		echo
		echo "Your favorite is $vegetable"
		echo "Yuck!"
		echo
		break
	done
}

choise_of beans rice carrots 
exit 0
