#https://www.codewars.com/kata/56dec885c54a926dcd001095/train/shell
n=$1
echo "$(echo "$n * -1" | bc)"