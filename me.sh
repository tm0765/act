#!/bin/bash

# Define the input text file and Python script
input_file="input.txt"
python_script="scanner.py"

# Read the file line by line
while IFS= read -r line; do
    # Execute the Python script with the line as an argument
    python3 "$python_script" "-u" "$line"
done < "$input_file"
