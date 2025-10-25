#https://www.codewars.com/kata/577bd026df78c19bca0002c0/train/python

def correct(s):
    new_s = s.replace("I", "1").replace("O", "0").replace("S", "5")
    return new_s
