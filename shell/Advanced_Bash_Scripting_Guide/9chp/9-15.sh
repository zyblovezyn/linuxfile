#########################################################################
# File Name: 9-15.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-24
#########################################################################
#!/bin/bash

:${1?"Usage:$0 ARGUMENT"}
echo "These two lines echo only if command-line parameter given"
echo "command line parameter=\"$1\""
exit 0
