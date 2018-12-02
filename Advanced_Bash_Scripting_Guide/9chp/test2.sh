#########################################################################
# File Name: test2.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-02
#########################################################################
#!/bin/bash
TIME_LIMIT=10
INTERVAL=1

echo "Hit Control-C to exit before $TIME_LIMIT seconds."
echo $SECONDS # 这个脚本运行的时间
while [ "$SECONDS" -le $TIME_LIMIT ];do
	if [ "$SECONDS" -eq 1 ];then
		units=second
	else
		units=seconds
	fi
	echo "This script has been running $SECONDS $units"
	sleep $INTERVAL
done
echo -e "\a"
exit 0

