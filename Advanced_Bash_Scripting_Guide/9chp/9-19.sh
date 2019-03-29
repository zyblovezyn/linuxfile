#########################################################################
# File Name: 9-19.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-03-20
#########################################################################
#!/bin/bash
var1=abcd-1234-defg
echo "var=$var1"

t=${var1#*-*}
echo "var1(with everything,up to and inclouding first -stripped out)=$t"

t=${var1##*-*}
echo $t

t=${var1%*-*}
echo $t

path_name=/home/bozo/ideas/thought.for.today
echo "path_name=$path_name"

t=${path_name##/*/}
echo "path_name ,stripped of prefixes=$t"

t=${path_name%/*.*}
echo $t

echo

t=${path_name:11}
echo $t

t=${path_name:11:5}
echo $t

t=${path_name/bozo/clown}
echo $t

t=${path_name/today/}
echo $t

t=${path_name//o/O}
echo $t

t=${path_name//o/}
echo $t

exit 0
