#########################################################################
# File Name: 9-22.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-03-31
#########################################################################
#!/bin/bash
a=letter
letter=z
echo

echo "a=$a"

eval a=\$$a
echo "Now a=$a"
echo

