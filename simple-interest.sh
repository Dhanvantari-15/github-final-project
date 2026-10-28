
#!/bin/bash

# Simple Interest Calculator

echo "Enter the principal amount:"
read -r p

echo "Enter the annual rate of interest:"
read -r r

echo "Enter the time period in years:"
read -r t

if ! [[ "$p" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$r" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$t" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid non-negative numbers."
    exit 1
fi

interest=$(awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN { printf "%.2f", (p*r*t)/100 }')

echo "Simple Interest: $interest"
