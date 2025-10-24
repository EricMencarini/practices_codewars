#https://www.codewars.com/kata/559ac78160f0be07c200005a/train/python

str_ = 'eric mencarini'

def name_shuffler(str_):
    space = str_.index(' ')              
    return str_[space + 1:] + ' ' + str_[:space]

print(name_shuffler(str_))
