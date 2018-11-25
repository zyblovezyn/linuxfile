#########################################################################
# File Name: 6-1.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-25
#########################################################################
#!/bin/bash

echo hello
echo $? # 返回0，因为执行成功了
lskdf	# 不认识的命令
echo $? # 返回非0，因为失败了
echo
exit 113
