This problem displays winning percentage of Head or Tail Combination in a Singlet, Doublet and Triplet

declare -A Dictionary
declare -A Singlets
loop=0
s=0
coin2=0
count=0


while [[ loop -le 10 ]];do

x=$((RANDOM%2))
y=$((RANDOM%2))
z=$((RANDOM%2))

if [[ $x -eq 0 ]] && [[ $y -eq 0 ]] && [[ $z -eq 1 ]];then
                        echo "doublet 1                     : HHT"
                        Singlets[$s]="HHT"
((s++))

elif [[ $x -eq 0 ]] && [[ $y -eq 1 ]] && [[ $z -eq 0 ]];then
			echo "doublet 2                     : HTH"
			Singlets[$s]="HTH"
((s++))

elif [[ $x -eq 1 ]] && [[ $y -eq 0 ]] && [[ $z -eq 0 ]];then
			echo "doublet 3                     : THH"
			Singlets[$s]="THH"
((s++))

elif [[ $x -eq 1 ]] && [[ $y -eq 0 ]] && [[ $z -eq 1 ]];then
			echo "doublet 4                     : THT"
			Singlets[$s]="THT"
((s++))

elif [[ $x -eq 0 ]] && [[ $y -eq 1 ]] && [[ $z -eq 1 ]];then
			echo "doublet 5                     : HTT"
			Singlets[$s]="HTT"
((s++))

elif [[ $x -eq 1 ]] && [[ $y -eq 1 ]] && [[ $z -eq 0 ]];then
                        echo "doublet 6                     : TTH"
			Singlets[$s]="TTH"
((s++))

elif [[ $x -eq 0 ]] && [[ $y -eq 0 ]] && [[ $z -eq 0 ]];then
                        echo "doublet and triplet 1         : HHH"
		        Dictionary[$coin2]="HHH"
((coin2++))

elif [[ $x -eq 1 ]] && [[ $y -eq 1 ]] && [[ $z -eq 1 ]];then
                        echo "doublet and triplet  2        : TTT"

			Dictionary[$coin2]="TTT"
((coin2++))

fi
((loop++))
			echo $loop
done

echo Winning Combinations/Triplets is/are : "$coin2" : "${Dictionary[@]}"

echo doublets are : "$loop" : "${Dictionary[@]}" and "${Singlets[@]}"
