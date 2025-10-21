#https://www.codewars.com/kata/55d24f55d7dd296eb9000030/train/shell

n=$1
summation(){
  echo $((n * (n+1) / 2)) 
}
summation