#########################################################################
# File Name: 11-10.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Tue 28 May 2019 10:34:09 PM CST
#########################################################################
#!/bin/bash

echo

let a=11
let a=a+5

echo "11+5=$a"

let "a<<=3"
echo "\"$a\"(=16) left-shifted 3 places=$a"

let "a/=4"
echo "128/4=$a"

let "a-=5"

echo "32-5+$a"

let "a*=10"
echo "27*10=$a"

let "a%=8"
echo "270 modulo 8=$a"
exit 0
