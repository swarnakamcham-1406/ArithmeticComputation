
#! /bin/bash -x

echo "welcome to the arithmetic computation"
read -p "enter value of a:" a
read -p "enter value of b" b
read -p "enter value of c:" c

first=$(( $a + $b * $c ));

echo "compute (a+b*c) : $first"

second=$(( $a * $b + $c ))

echo "compute (a*b+c):$second"

third=$(( $c + $a / $b ))

echo "compute (c+a/b) : $third "

four=$(( $a % $b + $c ))

echo "compute (a+b+c) : $four "

counter=0

result[$((counter++))]=$first
result[$((counter++))]=$second
result[$((counter++))]=$third
result[$((counter++))]=$four
echo ${result[@]}
echo ${!result[@]}






