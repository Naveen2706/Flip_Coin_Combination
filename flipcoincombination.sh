This problem displays winning percentage of Head or Tail Combination in a Singlet, Doublet and Triplet

declare -A Dictionary

loop=0
coin2=0
heads2=0
tails2=0

while [[ loop -le 10 ]];do

x=$((RANDOM%2))
y=$((RANDOM%2))
z=$((RANDOM%2))

if [[ $z -eq 0 ]] && [[ $x -eq $y ]] && [[ $y -eq $z ]];then
                        echo "triplet                      : HHH"
                        dictionary[$coin2]="HHH"
   ((coin2++))
   ((heads2++))
   elif [[ $y -eq 1 ]] && [[ $x -eq $y ]] && [[ $y -eq $z ]];then
                        echo "triplet                      : TTT"
                        Dictionary[$coin2]="TTT"
   ((coin2++))
   ((tails2++))
else 
echo Other than Triplet
fi

  ((loop++))
done

echo Number of triplets -"$coin2"

echo heads triplet percentage:
			awk "BEGIN {print 100*$heads2/$loop}"
echo tails triplet percentage:
			awk "BEGIN {print 100*$tails2/$loop}"
echo triplets percentage     :
			awk "BEGIN {print 100*$coin2/$loop}"

