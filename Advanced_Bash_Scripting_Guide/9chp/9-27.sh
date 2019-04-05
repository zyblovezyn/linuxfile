#########################################################################
# File Name: 9-27.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-03
#########################################################################
#!/bin/bash

RANDOM=$$

PIPS=6
MAXTHROWS=600
throw=0

ones=0
twos=0
thress=0
fours=0
fives=0
sixes=0

print_result()
{
	echo
	echo "ones=		${ones}"
	echo "twos=	    ${twos}"
	echo "thress=	${thress}"
	echo "fours=	${fours}"
	echo "fives=	${fives}"
	echo "sixes=	${sixes}"
	echo
}
print_result
update_count()
{
	case "$1" in
		0) let "ones+=1";;
		1) let "twos+=1";;
		2) let "thress+=1";;
		3) let "fours+=1";;
		4) let "fives+=1";;
		5) let "sixes+=1";;
	esac
}
echo

while [ "$throw" -lt "$MAXTHROWS" ]
do
	let "die1=RANDOM%$PIPS"
	update_count $die1
	let "throw+=1"
done

print_result
exit 0;
