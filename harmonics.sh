#!/bin/bash -x

read -p "Enter the number: " num
h=0

for ((i=1;i<=$num;i++ ))
do
	temp=$(( 1/$i ))
	h=$(( $h+$temp))
done
echo "Harmonic number: $h"

