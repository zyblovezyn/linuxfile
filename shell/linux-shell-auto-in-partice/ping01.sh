#########################################################################
# File Name: ping01.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Fri 10 May 2019 10:10:57 AM EDT
#########################################################################
#!/bin/bash

ping -c1 www.baidu.com &> /dev/null && echo "ping www.baidu.com is success" || echo "ping is failed"
