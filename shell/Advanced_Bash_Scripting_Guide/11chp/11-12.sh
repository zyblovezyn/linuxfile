#########################################################################
# File Name: 11-12.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 30 May 2019 09:51:23 PM CST
#########################################################################
#!/bin/bash

killppp="eval kill -9 `px ax | awk '/ppp/' {print $1}`"

$killppp
chmod 666 /dev/ttyS3
rm /var/lock/LCK..ttyS3
exit 0
