This problem displays winning percentage of Head or Tail Combination in a Singlet, Doublet and Triplet

x=$((RANDOM%2))

if [[ $x -eq 0 ]];then
	 echo winner : heads
else 
	echo winner : tails
fi
