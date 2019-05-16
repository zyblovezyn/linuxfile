#########################################################################
# File Name: 11-1.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 16 May 2019 10:12:41 AM EDT
#########################################################################
#!/bin/bash

PIDS=$(pidof sh $0) # 这个脚本不同实例的进程ID
P_arr=(PIDS)
echo $PIDS

let "instances = ${#P_arr[*]} -1"
echo "[Hit Ctl-C to exit]";echo

sleep 1
sh $0

exit 0

