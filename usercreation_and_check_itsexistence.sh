#!/bin/bash

# Create the user by using shell scripting :- 

read -p "Give the username that you want to create :- " username
echo "Okay, You have entered this  username :- $username"
sudo useradd -m $username 


# Check if the user was created successfully
if id "$username" &>/dev/null; then
    echo "User '$username' has been created successfully."
else
    echo "Failed to create user '$username'. Please check for errors."
fi
