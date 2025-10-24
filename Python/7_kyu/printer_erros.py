#https://www.codewars.com/kata/56541980fa08ab47a0000040/solutions/python
def printer_error(s):
    counting_errors = sum('n' <= char <= 'z' for char in s.lower())
    total_strings = len(s)
    return f"{counting_errors}" / str(total_strings)
    #return f"{counting_errors}/{total_strings}" -- better way
