#https://www.codewars.com/kata/5a00e05cc374cb34d100000d/train/python

n = 5

def reverse_seq(n):
    l = []
    for number in range(1, n + 1):
        l.append(number)
    return l[::-1]

print(reverse_seq(n))
        