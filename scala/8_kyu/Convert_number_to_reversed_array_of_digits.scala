def digitize(n: Long): Seq[Int] = 
{
  n.toString.reverse.map(_.asDigit)
}