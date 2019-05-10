#########################################################################
# File Name: 8-4.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-30
#########################################################################
#!/bin/bash

# 数字字面量

# 十进制:默认

let "dec=32"
echo "decimal number = $dec"

# 8进制:以'0'开头
let "oct=032"
echo "octal number = $oct"

# 16进制:数字以'0x'或者0X开头
let "hex=0x32"
echo "hexadeciaml number = $hex"

# Bash的进制在2到64

let "bin=2#1111001111001101"
echo "bianry number = $bin"

let "b32=32#77"
echo "base-32 number=$b32"

let "bin64=64#@_"
echo "base-64 number=$bin64"

echo $((36#zz)) $((2#101010101)) $((16#AF16)) $((53#1aA))

let "bad_oct=081" # 超过进制范围报错

exit 0


