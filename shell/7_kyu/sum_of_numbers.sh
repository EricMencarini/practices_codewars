#https://www.codewars.com/kata/55f2b110f61eb01779000053/solutions/shell
a=$1
b=$2
sum=0

if [ $a -le $b ]; then
  for i in $(seq $a $b); do
    ((sum += i))
  done
else
  for i in $(seq $a -1 $b); do
    ((sum += i))
  done
fi

echo $sum