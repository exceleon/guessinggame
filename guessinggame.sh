#!/bin/bash

# Function to count the number of files in your current directory

function num_files_count {
    local count=$(ls -1 | wc -l)
    echo $count
}

# Function to guessinggame.sh

function guessing_game {
    local file_count=$(num_files_count)
    local user_guess=-1

    echo "Welcome to Guessing Game!"
    echo "How many files are in your current directory?"

    while [[ $user_guess -ne $file_count ]]; do
        read -p "Enter your guess: " user_guess

        if [[ $user_guess -lt $file_count ]]; then
            echo "Too low! Try again!"
        elif [[ $user_guess -gt $file_count ]]; then
            echo "Too high! Try again!"
        else echo "Congratulations! You guessed the correct number"
        fi
    done
}

# Start

guessing_game