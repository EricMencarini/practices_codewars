//https://www.codewars.com/kata/57f781872e3d8ca2a000007e/solutions/scala
object Kata {
  def maps(xs: List[Int]): List[Int] = 
  for (n <- xs) yield n * 2
}