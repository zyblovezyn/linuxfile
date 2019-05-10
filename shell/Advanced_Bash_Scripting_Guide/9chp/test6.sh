#########################################################################
# File Name: test6.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-09
#########################################################################
#!/bin/bash

username0=
echo "username0 has been declared,but is set to null"
echo "username0=${username0-`whoami`}"
# 将不会echo

echo "username1 has not been declared."
echo "username1=${username1-`whoami`}"
# 将会echo

username2=
echo "username2 has been declared,but is set to null"
echo "${username2:-`whoami`}"

#	将会echo因为使用的是:-而不是-

variable=
echo "${variable-0}"
echo "${variable:-1}"

unset variable
echo "${variable-2}"
echo "${variable:-3}"

exit 0
