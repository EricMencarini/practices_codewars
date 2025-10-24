#https://www.codewars.com/kata/5656b6906de340bd1b0000ac/train/shell

#!/bin/bash
longest() {
    sum_strings="$1$2"
    echo "$sum_strings" | grep -o . | sort -u | tr -d '\n'
    echo
}
longest "$1" "$2"
