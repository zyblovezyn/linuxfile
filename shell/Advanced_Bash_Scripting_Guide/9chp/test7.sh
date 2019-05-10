#########################################################################
# File Name: test7.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-09
#########################################################################
#!/bin/bash

a=${param1+xyz}
echo "a=$a"

param2=
echo "${param2+xyz}"

param3=123
echo "${param3+xyz}"

echo "${param4:+xyz}"

param5=
echo "${param5:+xyz}"

param6=123
echo "${param6:+xyz}"
