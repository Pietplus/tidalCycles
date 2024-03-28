#!/bin/bash

# Function to generate a random number and insert a special character into the main pattern
generate_pattern() {
    local special_characters=("@" "#" "$" "%" "&")  # Define special characters
    local random_number=$((RANDOM % 5))             # Generate random number between 0 and 4
    local character=${special_characters[$random_number]}  # Get special character
    local pattern="<$characters>"
    for item in "${main_pattern[@]}"; do
        pattern="$pattern $item"  # Append each item in main pattern to pattern

     main_pattern[$1]="<$character>"  # Insert special character into main pattern at index specified by $1
}

# Define main pattern array
declare -a main_pattern

# Loop 16 times
for ((i = 0; i < 16; i++)); do
    generate_pattern $i  # Generate pattern for each iteration
done

# Increment the pattern d1 $ s "" # midichan 1 synchron to the times of the loop
for ((i = 0; i < 16; i++)); do
    echo "d1 \$ s \"\" # midichan 1"  # Print the desired command synchronizing to the times of the loop
done


