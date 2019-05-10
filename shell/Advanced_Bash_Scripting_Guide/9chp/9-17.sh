#########################################################################
# File Name: 9-17.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-25
#########################################################################
#!/bin/bash

var1=abcd12345abc6789
pattern=a*c 
echo
echo "var1=$var1"
echo "var1=${var1}"

echo "Number of characters in ${var1}=${#var1}"
echo

echo "pattern=$pattern"
echo "-----------------"
echo '${var1#$pattern}='"${var1#$pattern}"

echo '${var1##$pattern}='"${var1##$pattern}"

pattern1=b*9
echo "var1=$var1"
echo "pattern1=$pattern1"
echo '${var1%$pattern1}'="${var1%$pattern1}"
echo '${var1%%$pattern1}'="${var1%%$pattern1}"
#   remember # ## begin left
#   remember % %% begin right
exit 0

