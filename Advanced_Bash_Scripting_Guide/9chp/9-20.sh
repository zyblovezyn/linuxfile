#########################################################################
# File Name: 9-20.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-03-31
#########################################################################
#!/bin/bash
v0=abc1234zip1234abc
echo "v0=$v0"
echo

v1=${v0/#abc/ABCD}
echo "v1=$v1"

v2=${v0/%abc/ABCDF}
echo "v2=$v2"

v3=${v0/#123/000}
echo "v3=$v3"

v4=${v0/%123/000}
echo "v4=$v4"
exit 0

