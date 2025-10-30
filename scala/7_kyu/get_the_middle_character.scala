//https://www.codewars.com/kata/56747fd5cb988479af000028/train/scala
object MiddleChar {
  def middle(s: String): String = {
    val len = s.length
    val mid = len / 2
    
    if (len % 2 == 0)
      s.substring(mid - 1, mid + 1)
    else
      s.substring(mid, mid + 1)
  }
}