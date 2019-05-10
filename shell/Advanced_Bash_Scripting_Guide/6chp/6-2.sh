#########################################################################
# File Name: 6-2.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-25
#########################################################################
#!/bin/bash
true	# true是shell内建命令，什么事都不做，就是shell返回0
echo "exit status of \"true\" = $?" # 0
! true
echo "exit status of \"true\" = $?" # 0
# 注意：!需要一个空格
# ! true将导致也个"command not found"错误
# 如果一个命令以‘!’开头，那么将使用bash的历史机制.就是现实这个命令被使用的历史

true
!true

