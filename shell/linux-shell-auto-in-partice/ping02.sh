#########################################################################
# File Name: pinmg02.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Mon 27 May 2019 10:10:19 PM CST
#########################################################################
#!/bin/bash

ip=192.168.1.2

ping -c1 $ip >/dev/null && echo "$ip is up" || echo "$ip is down"
