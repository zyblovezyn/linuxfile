#########################################################################
# File Name: 9-30.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-05
#########################################################################
#!/bin/bash

((a=30))
echo "a(initial value)=$a"

((a++))
echo "a{after a++}=$a"

((a--))
echo "a{after a--}=$a"

((++a))
echo "a(after ++a)=$a"

((--a))
echo "a(after --a)=$a"

n=1;let --n && echo "TRUE"||echo "FALSE"
n=1;let n-- && echo "TRUE"||echo "FALSE"

((t=a<45?7:11))
echo "if a<45,then t=7,else t=11."
echo "t=$t"
exit 0
