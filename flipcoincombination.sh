This problem displays winning percentage of Head or Tail Combination in a Singlet, Doublet and Triplet

declare -A Dictionary

loop=0
heads=0
tails=0
headsper=0
tailsper=0
sum=0
coin2=0
heads2=0
tails2=0

while [[ loop -le 10 ]];do

x=$((RANDOM%2))
y=$((RANDOM%2))

if [[ $x -eq 0 ]];then
			echo winner : heads
			Dictionary[$loop]="heads"
   ((heads++))
   else 
			echo winner : tailS
			Dictionary[$loop]="tails" 
   ((tails++))
fi

if [[ $y -eq 0 ]] && [[ $x -eq $y ]];then
                        echo "doublet                      : HH"
                        doublet[$coin2]="HH"
   ((coin2++))
   ((heads2++))
   elif [[ $y -eq 1 ]] && [[ $x -eq $y ]];then
                        echo "doublet                      : TT"
                        Dictionary[$coin2]="TT"
   ((coin2++))
   ((tails2++))
fi
   ((loop++))
done

echo Number of doublets -"$coin2"

echo heads doublet percentage:
			awk "BEGIN {print 100*$heads2/$loop}"
echo tails doublet percentage:
			awk "BEGIN {print 100*$tails2/$loop}"
echo doublets percentage     :
			awk "BEGIN {print 100*$coin2/$loop}"

