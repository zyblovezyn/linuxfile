#########################################################################
# File Name: 10-26.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Fri 10 May 2019 09:59:37 AM EDT
#########################################################################
#!/bin/bash

# 使用命令替换来产生case变量

case $(arch) in
	i383) echo "80386-based machine";;
	i486) echo "80486-based machine";;
	i586) echo "Pentium-based machine";;
	i686) echo "Pentium-2-based machine";;
	*) echo "Other type of machine"
esac
exit 0
