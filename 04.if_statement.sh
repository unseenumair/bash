#!/bin/bash

a=6
b=10

echo "if...fi statement"

if [ $a == $b ]
then
	echo "$a is equal to $b"
fi

echo "if...else...fi statement"

if [ $a == $b ]
then
	echo "$a is equal to $b"
else
	echo "$a is not equal to $b"
fi

echo "if...elif...fi statement"

if [ $a == $b ]
then
	echo "$a is equal to $b"
	
elif [ $a -gt $b ]
then
	echo "$a is greater than $b"
	
elif [ $a -lt $b ]
then
	echo "$a is less than $b"

else
	echo "No Condition met" 
fi
