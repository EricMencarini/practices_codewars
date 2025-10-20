#https://www.codewars.com/kata/5b853229cfde412a470000d0/solutions/shell

dad_years_old=$1
son_years_old=$2

twice_as_old=$(( dad_years_old - 2 * son_years_old ))


if [ $twice_as_old -lt 0 ]; 
  then twice_as_old=$(( -twice_as_old ))
fi

echo $twice_as_old
