#! /usr/bin/bash
echo "Enter a number for finding factorial: "
read no
a=$no
fact=1
 
while [ $no -gt 1 ]
do 
fact=$((fact * no ))
no=$(( no-1 ))
done

echo "Factorial of $a is $fact"