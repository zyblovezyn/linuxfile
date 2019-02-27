#########################################################################
# File Name: test5.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-06
#########################################################################
#!/bin/bash

echo ${*:2}
echo ${@:2}

echo ${*:2:3}

expr substr $string $position $length

stringZ=abcABC123ABCabc
echo `expr substr $stringZ 1 2`
echo `expr substr $stringZ 4 3`

expr match "$string '\($substring\)'"


