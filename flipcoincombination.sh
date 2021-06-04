This problem displays winning percentage of Head or Tail Combination in a Singlet, Doublet and Triplet

declare -A Dictionary
loop=0
heads=0
tails=0
headsper=0
tailsper=0
sum=0

while [[ loop -le 10 ]];do

x=$((RANDOM%2))

if [[ $x -eq 0 ]];then
			echo winner : heads
			Dictionary[$loop]="heads"
   ((heads++))
   else 
			echo winner : tailS
			Dictionary[$loop]="tails" 
   ((tails++))
fi
   ((loop++))
done

sum=$(($heads+$tails))
echo heads percentage:
			awk "BEGIN {print 100*$heads/$sum}"
echo tails percentage:
			awk "BEGIN {print 100*$tails/$sum}"


