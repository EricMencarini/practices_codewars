#https://www.codewars.com/kata/582cd9033c1acf1d45000052/train/shell

count=1
while [ $count -le 20 ]
do
  echo "Count: $count"
  ((count++))
done