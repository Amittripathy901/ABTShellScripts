#!/bin/bash
#


set -x

#
#List s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker 


#list ec2 instances
echo "Print all the ec2 instances"
aws ec2 describe-instances >> resourceTracker

#list lambda functions
echo "Print list of lambda functions"
aws lambda list-functions >> resourceTracker

#list IAM uers
echo "Print list of IAM users"
aws iam list-users >> resourceTracker


