#! /bin/bash
echo "Welcome to the FLIP COIN SIMULATOR"
i=0
ch=0
ct=0
while [ $i -lt 10 ]
do
x=$((RANDOM%2));
if [ $x -eq 1 ]; then
   echo "Heads"
   ((ch++))
else
   echo "Tails"
   ((ct++))
fi
((i++))
done
echo "Heads= $ch"
echo "Tails= $ct"
