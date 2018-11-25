#########################################################################
# File Name: 1.4.2.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri 16 Nov 2018 08:08:41 AM EST
#########################################################################
#!/bin/bash
no1=4
no2=5
let result=no1+no2
echo $result
let no1++
echo $no1
let no1--
echo $no1
result=$[ no1 + no2 ]
echo $result
result=
