#########################################################################
# File Name: 10-25.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Wed 08 May 2019 11:16:48 AM EDT
#########################################################################
#!/bin/bash

clear # 清屏

echo "			Contact List"
echo "			------------"
echo "Choose one of the floowing persons:"
echo

echo "[E]vans,Roland"
echo "[J]ones,Mildred"
echo "[S]mith,Julie"
echo "[Z]ane,Morris"
echo

read person

case "$person" in
	"E" | 'e')
		echo
		echo "Roland Evans"
		echo "4321 Floppy Dr."
		;;
	"J" | "j")
		echo
		echo "Mildred Jones"
		echo "--------------"
		;;
	*)
		echo
		echo "Not yet in database"
		;;
esac
echo 
exit 0
