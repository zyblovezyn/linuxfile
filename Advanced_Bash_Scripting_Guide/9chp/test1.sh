#########################################################################
# File Name: test1.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-02
#########################################################################
#!/bin/bash

echo "what's your favorite vegetable.'"
echo "your favorite vegetable is $REPLY."
read
echo 
echo "what'syour favorite fruit?"
read fruit
echo "your favorite fruit is $fruit."
echo "but.."
echo "Value of \$REPLY is still $REPLY"
echo
exit 0
