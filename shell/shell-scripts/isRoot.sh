#########################################################################
# File Name: isRoot.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sun 19 May 2019 10:47:05 AM EDT
#########################################################################
#!/bin/bash

if [ $UID -ne 0 ];then echo "not root user";else echo "root user";fi
