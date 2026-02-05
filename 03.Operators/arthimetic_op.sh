#!/bin/bash

a=3
b=8

val= expr $a \* $b
echo "a * b = $val"

aval= expr $a + $b
echo "a + b = $aval"
