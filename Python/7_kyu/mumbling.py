#https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/python
st = 'abcd'
def accum(st):
    string = [st[i].upper() + st[i].lower() * i for i in range(len(st))]
    return '-'.join(string)

print(accum(st))

