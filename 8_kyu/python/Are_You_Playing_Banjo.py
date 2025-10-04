#https://www.codewars.com/kata/53af2b8861023f1d88000832/train/python

name = 'Rikke'

def are_you_playing_banjo(name):
    if name[0] == 'r' or name[0] == 'R':
        return name + ' ' +'plays Banjo'
    else:
        return name + ' ' + 'does not play banjo'
    
print(are_you_playing_banjo(name))