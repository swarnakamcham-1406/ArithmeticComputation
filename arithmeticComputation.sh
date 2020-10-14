
#! /bin/bash -x

echo "welcome to the arithmetic computation"
read -p "enter value of a:" a
read -p "enter value of b" b
read -p "enter value of c:" c

num=$(( $a * $b + $c ));

echo "compute (a*b+c) : $num"




