#! /bin/bash
echo "Welcome to the FLIP COIN SIMULATOR"
i=0
ch=0
ct=0
z=0
while [[ $ch -lt 21 && $ct -lt 21 ]]
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
if [ $ch -gt $ct ]; then
	z=$(( $ch-$ct ))
	echo "Player choosing Heads won by: $z"
elif [ $ch -eq $ct ]; then
	echo "Tie"
elif [ $ch -lt $ct]; then
	z=$(( $ct-$ch ))
	echo "Player choosing Tails won by: $z"
fi
