#! /bin/bash
echo "Welcome to the FLIP COIN SIMULATOR"
q=0
ch=0
ct=0
z=0
while [ $q -lt 20 ]
do
x=$((RANDOM%2));
if [ $x -eq 1 ]; then
   echo "Heads"
   ((ch++))
else
   echo "Tails"
   ((ct++))
fi
((q++))
done

echo "Heads= $ch"
echo "Tails= $ct"


if [ $ch -gt $ct ]; then
	z=$(( $ch-$ct ))
	echo "Player choosing Heads won by: $z"
elif [ $ch -eq $ct ]; then
	echo "Tie Situation"
   h=0
   t=0
   diff=0
   while [[ $diff -lt 2 ]]
   do
      y=$((RANDOM%2));
      if [ $y -eq 1 ]; then
         echo "Heads"
         ((h++))
      else
         echo "Tails"
         ((t++))
      fi
      if [ $h -gt $t ]; then
      diff=$(($h-$t))   #head-tail
      echo "Head - tail=" $diff ;
      else
      diff=$(($t-$h))  #tail-head
      echo "Tail - head=" $diff ;

      fi
   done
   echo "Tie Situation solved - Player with Last Call wins "



elif [ $ch -lt $ct ]; then
	z=$(( $ct-$ch ))
	echo "Player choosing Tails won by: $z"
fi
