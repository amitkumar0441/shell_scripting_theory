#!/bin/bash
file_path=/home/masterserver/myfolder/shellscripting/forloop/fruits.txt 


for i in $(cat $file_path); 
do 
 echo "fruit name is :- $i"
done 