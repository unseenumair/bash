#!/bin/bash

file="fileTest_op.sh"

echo "-r $file : File has read access?"
echo "-w $file : File has write access?"
echo "-x $file : File has execute permission?"

echo "-f $file : Ordinary file?"
echo "-d $file : It is a directory?"
echo "-s $file : File size Zero?"
echo "-e $file : File Exists?"
