#!/bin/bash

## AWS Resource Tracker

# This script give resource utilisation of                  ####
# S3 buckets/ EC2 Instances /Lambda Functions / IAM User    ####

set -x

# Lists S3 Buckets
echo " List of S3 buckets"
aws s3 ls

# List EC2 Instances
echo " List of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List Lambda fucnctions
echo " List of Lambda functions"
aws lambda list-functions

# List IAM users
echo "List of IAM users"
aws iam list-users

