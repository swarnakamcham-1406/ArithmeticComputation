
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
for ((i=0;i<=4;i++))
do
arr[i]=${result[$(($i-1))]}

done

echo "before sorting ${arr[@]}"

for ((k=0;k<=4;k++))
do

  for ((j=0;j<=4;j++))
  do
    if [[ ${arr[$k]} -gt ${arr[$j]} ]]
        then


          temp=${arr[$k]}
           arr[$k]=${arr[$j]}
          arr[$j]=$temp
        fi
done
done

echo "after sortiing ${arr[@]}"
echo "after sorting ${!arr[@]}"






