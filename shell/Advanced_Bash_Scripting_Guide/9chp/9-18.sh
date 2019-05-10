#########################################################################
# File Name: 9-18.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-26
#########################################################################
#!/bin/bash

var1=abcd-1234-defg
echo "var1=${var1}"

t=${var1#*-*}
echo "var1 =$t"

t=${var1##*-*}
echo "var1=$t"

t=${var1%*-*}
echo "var1=$t"

echo "var1=$t"

path_name=/home/bozo/ideas/thoughts.for.today

t=${path_name##/*/}
echo "path_name=$t"

t=${path_name%/*.*}
echo "var1=$t"

t=${path_name:11}
echo "var1=${t}"

t=${path_name:11:5}
echo $t

t=${path_name/bozo/clown}
echo $t

t=${path_name/todays/}
echo $t

t=${path_name//o/}
echo $t

t=${path_name//o/O}
echo $t
