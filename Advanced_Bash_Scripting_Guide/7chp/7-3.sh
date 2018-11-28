#########################################################################
# File Name: 7-3.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-27
#########################################################################
#!/bin/bash

# 算数测试使用(())

# ((...))结构计算并测试算术表达式的结果.
# 退出码将与[...]的结果相反

((0))
echo "Exit status of\"((0))\" is $?."

((1))
echo "Exit status of\"((1))\" is $?."

((5>4)) # true
echo "Exit status of\"(())\" is $?."

((4>9)) # false
echo "Exit status of\"(())\" is $?."

((5-5)) # 0
echo "Exit status of\"(())\" is $?."

((5/4))
echo "Exit status of\"(())\" is $?."
((1/2))
echo "Exit status of\"(())\" is $?."

((1/0)) 2>/dev/null
echo "Exit status of\"(())\" is $?."

exit 0



