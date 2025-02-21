#!/bin/bash 

# simple script for understanding error handling :- 

# definition of function :- 
function simplefunction {
    #block ofcode
    mkdir demo
}

#call the function with error handling :- 
if ! simplefunction; then 
echo "The code is being exited as the directory aleady exists"
exit 1 
fi 

echo "Your shell script has been executed successfully , you can proceed further"

