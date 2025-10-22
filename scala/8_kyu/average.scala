//https://www.codewars.com/kata/57a2013acf1fa5bfc4000921/solutions/scala
def findAverage(numbers: Seq[Int]): Double = 
  if (numbers.nonEmpty) numbers.sum.toDouble / numbers.length 
  else 0.0