#!/bin/bash
# for loop for checking files in a particular path
file_path="/home/masterserver/myfolder/shellscripting/forloop/*"

for i in $file_path; 
do 
    echo "file name is :- $(basename "$i")"
done
