#########################################################################
# File Name: test4.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-06
#########################################################################
#!/bin/bash

# ${string:position} 在string中从位置$position开始提取子串
# ${string:position:length} 在string中从位置$position开始提取长度为length子串

stringZ=abcABC123ABCabc

echo ${stringZ:0}

echo ${stringZ:1}
echo ${stringZ:7}

echo ${stringZ:-4}

echo ${stringZ:(-4)} # 使用圆括号可以显示Cabc
echo ${stringZ: -4}  # 使用数字前加空格可以显示Cabc

exit 0



