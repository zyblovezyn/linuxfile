#########################################################################
# File Name: array.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sat 25 May 2019 09:34:50 PM CST
#########################################################################
#!/bin/bash

declare -A fruit
fruit=([apple]='100dollars' [orange]='150 dollars')

echo ${fruit[*]}
echo ${#fruit[*]}

echo ${!fruit[*]}
echo ${!fruit[@]}

