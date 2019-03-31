#########################################################################
# File Name: 9-24.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-03-31
#########################################################################
#!/bin/bash

MAXCOUNT=10
count=1
echo 
echo "$MAXCOUNT random numbers:"
echo "------------"

while [ "$count" -le $MAXCOUNT ]
do
	number=$RANDOM
	echo $number
	let "count+=1"
done
echo "------------"

RANCE=500
echo

number=$RANDOM
number=$(($number % $RANCE))
echo "Random number less than $RANCE -- $number"

echo


FLOOR=200
number=0
while [ "$number" -le $FLOOR ]
do
	number=$RANDOM
done

echo "Random number greater than $FLOOR --- $number"
echo

number=0
while [ "$number" -le $FLOOR ]
do
	number=$RANDOM
	let "number%=$RANCE"
done

echo "Random number between $FLOOR and $RANCE --- $number"



BINARY=2
T=1
number=$RANDOM
let "number%=$BINARY"

if [ "$number" -eq $T ]
then
	echo "TRUE"
else
	echo "FALSE"
fi

echo 

SPOTS=6
die1=0
die2=0

let "die1=$RANDOM%$SPOTS+1"
let "die2=$RANDOM%$SPOTS+1"

let "throw=$die1+$die2"

echo "Throw of the dice = $throw"
echo
exit 0

