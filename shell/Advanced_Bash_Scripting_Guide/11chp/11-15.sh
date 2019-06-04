#########################################################################
# File Name: 11-15.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Mon 03 Jun 2019 10:00:00 PM CST
#########################################################################
#!/bin/bash

echo
echo "Positional parameters begore set \`uname -a\`:" # uname命令打印操作系统名
echo "Command-line argument #1 = $1"
echo "Command-line argument #2 = $2"
echo "Command-line argument #3 = $3"

set `uname -a`

echo $_ #打印参数最后一个单词

echo "Positional parameters after set \`uname -a\`:"

echo "Field #1 = $1"
echo "Field #2 = $2"
echo "Field #3 = $3"
echo ---
echo 123
echo $_
exit 0



