#########################################################################
# File Name: 9-20-test1.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-03-31
#########################################################################
#!/bin/bash

xyz23=whatever
xyz24=

a=${!xyz*}
echo "a=$a"

a=${!xyz@}
echo "a=$a"

exit 0
