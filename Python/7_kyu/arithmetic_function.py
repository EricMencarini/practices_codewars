#https://www.codewars.com/kata/583f158ea20cfcbeb400000a/train/python
def arithmetic(a, b, operator):
    operation = {
        'add': a + b,    
        'subtract': a - b,
        'multiply': a * b,
        'divide':   a / b
    }
    return operation.get(operator)