//https://www.codewars.com/kata/56170e844da7c6f647000063/train/scala
def peopleWithAgeDrink(age: Int): String =
    if (age < 14) "drink toddy"  
    else if(age < 18) "drink coke"  
    else if (age < 21) "drink beer"  
    else "drink whisky"