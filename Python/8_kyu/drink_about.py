#https://www.codewars.com/kata/56170e844da7c6f647000063/train/python

def people_with_age_drink(age):
    return ("drink toddy" if age < 14 else
            "drink coke" if age < 18 else
            "drink beer" if age < 21 else
            "drink whisky"
    )
