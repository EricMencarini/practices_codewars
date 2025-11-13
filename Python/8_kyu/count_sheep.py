#https://www.codewars.com/kata/5b077ebdaf15be5c7f000077/train/python
n = 3

def count_sheep(n):
    i = 0
    n_sheep = ''
    if n > 0:
        for i in range(1,n+1): 
            n_sheep += str(i) + ' ' + 'sheep' + '...'   
        return n_sheep
    else:
        return ''

print(count_sheep(n))