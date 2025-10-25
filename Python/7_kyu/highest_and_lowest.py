#https://www.codewars.com/kata/554b4ac871d6813a03000035/train/python

numbers = (1,2,3)

def high_and_low(numbers):
    number = [int(n) for n in numbers.split()]
    return f"{max(number)} {min(number)}"

print(high_and_low(numbers))