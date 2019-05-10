#########################################################################
# File Name: 5-2.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-25
#########################################################################
#!/bin/bash

# 转义符

echo;echo
echo "\v\v\v\v" # 逐字打印\v\v\v\v
echo "===================="
echo "VERTICAL TABS"
echo -e "\v\v\v\v" # print 4 vertical tabs
echo "===================="

echo "QUOTATION MARK"
echo -e "\042"
echo "===================="

# The $'\X' conctruct makes the -e option unnecessary.
# 如果使用$'\X',那么-e选项就不必要了
echo;echo "NEWLINE AND BEEP"
echo $'\n' # 新行
echo $'\a' # Alert(beep)

echo "===================="
echo "QUOTATION MARKS"
echo $'\t \042 \t'

echo $'\t \x22 \t'
echo "===================="
echo

quote=$'\042'
echo "$quote This is a quoted string,$quote and this lies outside the quotes."
echo

#变量中连续的ASCII char
triple_underline=$'\137\137\137'
echo "$triple_underline UNDERLINE $triple_underline"

echo

ABC=$'\101\102\103\010'
echo $ABC

echo;echo

escape=$'\033'
echo "\"escape\" echoes as $escape"

echo;echo

exit 0

