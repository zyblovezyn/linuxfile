#########################################################################
# File Name: test.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-29
#########################################################################
#!/bin/bash

a=214748646
((a++))
echo "$a"
let "a=a+1"
echo "$a"

echo "--------------------"
a=1.5
let "b=22"
echo "$b"


