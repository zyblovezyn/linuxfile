#########################################################################
# File Name: 2to8to16.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Mon 20 May 2019 08:35:40 PM CST
#########################################################################
#!/bin/bash

# 数字进制转换
no=100

echo "obase=2;$no"|bc
no=1100100
echo "obase=10;ibase=2;$no"|bc

