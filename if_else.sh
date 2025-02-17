#!/bin/bash

# Let's understand if-else conditions

if id stampede &>/dev/null; then
    sudo userdel -r stampede
    echo "User 'stampede' has been deleted."
else
    echo "Sorry, there is no such user."
fi

