//https://www.codewars.com/kata/57eae65a4321032ce000002d/solutions/scala
def fakeBin(digits: String): String = {
    var result = ""
    for (char <- digits) {
      if (char.asDigit < 5)
        result += "0"
      else
        result += "1"
    }    
  result
}
