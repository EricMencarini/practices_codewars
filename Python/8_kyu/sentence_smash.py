#https://www.codewars.com/kata/53dc23c68a0c93699800041d/train/python

words =['hello', 'world', 'this', 'is', 'great']

def smash(words):
    full_word = ""
    for word in words:
        full_word += f"{word} "
    return full_word.strip()

print(smash(words)) 