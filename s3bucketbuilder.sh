#!/bin/bash

# Set your desired bucket name
bucketname=clouduploaderbucket

# Set your desired AWS region
region=us-east-1

# Create S3 bucket
aws s3api create-bucket --bucket "$bucketname" --region "$region"

# Check if bucket creation was successful
if [ $? -eq 0 ]; then
    echo "S3 bucket $bucket_name created successfully."
else
    echo "Failed to create S3 bucket $bucket_name."
fi

