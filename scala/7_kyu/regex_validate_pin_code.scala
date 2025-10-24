//https://www.codewars.com/kata/55f8a9c06c018a0d6e000132/train/scala
def validatePin(pin: String): Boolean = 
  if (pin.nonEmpty && pin.forall(_.isDigit))
    (pin.length == 4 || pin.length == 6)
  else
    false
