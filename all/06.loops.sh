#!/bin/bash

# While Loop
# a=0
# while [ $a -lt 10 ]
# do
	# echo $a
	# a=`expr $a + 1`
# done

# For Loop
# for var in 0 1 2 3 4 5 6 7 8 9
# do
	# echo $var
# done

# Until Loop
i=10
until [ $i == -1 ]
do
	echo $i
	i=$((i-1))
done
