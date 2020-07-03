#!/bin/bash

result=$(./gcd.sh)
echo $result
if [ $result = 2 ] ; then
	exit 0
else 
	exit 1
fi
