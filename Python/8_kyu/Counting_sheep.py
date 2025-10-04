#https://www.codewars.com/kata/54edbc7200b811e956000556/python

def count_sheeps(sheep_list):
    if not sheep_list:
        return 0
    return sum(1 for sheep in sheep_list if sheep is True)