#https://www.codewars.com/kata/582cb0224e56e068d800003c/train/shell
time=$1
result=$(echo "$time * 0.5" | bc)
printf "%.2f\n" "$result"