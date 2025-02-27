#!/bin/bash

# script for checking resources under some services 

region=$1
service=$2 

# first check arguments that are required to run the script :- 

if [ $# -ne 2 ]; then 
echo "You have not define right arguments please define it properly like :- ./check_aws_runningresources.sh <regionname> <servicename> "
exit 1 
fi 


# second check if aws cli has been installed or not :- 

if ! aws --version &> /dev/null
then
    echo "AWS CLI is not installed. Exiting..."
    exit 1
fi

# Third check if aws configure has been setup or not :- 

if [ ! -d "$HOME/.aws" ]; then 
echo "You haven't configured aws configure , please configure it" 
exit 1 
fi 


case "$service" in
    ec2) 
        aws ec2 describe-instances --region "$region"
        ;;
    s3) 
        aws s3 ls --region "$region"
        ;;
    *) 
        echo "Invalid service"
        exit 1 
        ;;
esac

