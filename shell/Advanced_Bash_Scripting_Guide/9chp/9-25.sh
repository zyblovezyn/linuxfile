#########################################################################
# File Name: 9-25.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-03
#########################################################################
#!/bin/bash

Suites="Clubs
Diamonds
Hearts
Spades"

Demominations="2
3
4
5
6
7
8
9
10
Jack
Queue
King
Ace"

suite=($Suites)
denomination=($Demominations)

num_suites=${#suite[*]}
num_denominations=${#denomination[*]}

echo -n "${denomination[$((RANDOM%num_denominations))]} of"
echo ${suite[$((RANDOM%num_suites))]}

exit 0
