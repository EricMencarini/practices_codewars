#https://www.codewars.com/kata/59bfe5f15227ddf81900007b/train/shell

lastmodifiedfile=$(ls -t | head -n 1)
for file in *; do
  if [ "$file" = "$lastmodifiedfile" ]; then
    echo "$file"
  fi
done